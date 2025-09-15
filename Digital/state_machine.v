/*
--------------------------------------------------------------------------------
 Title        : state_machine
 Project      : 180-voltmeter
 File         : state_machine.v
 Description  : Finite state machine that controls the voltmeter measurement
                sequence. Manages the auto-zero, integrate, and deintegrate phases
                of dual-slope analog-to-digital conversion. Coordinates timing
                control through counter instances and generates appropriate AFE
                control signals for each measurement phase.
 
 Author       : Tristan Wood tdwood2@ncsu.edu
 Created      : 2025-08-13
 License      : See LICENSE in the project root

Revision History:
   - 1.0  2025-08-13 Tristan Wood
         Initial implementation of voltmeter measurement FSM
         (basic states: IDLE, AUTO_ZERO, INTEGRATE, DEINTEGRATE;
          simple counter-based sequencing, no autoranging)

   - 2.0  2025-09-11 Tristan Wood
         Major update:
           * Added explicit cycle/pulse counter separation
           * Implemented multi-range (RANGE_1 to RANGE_4) support
           * Introduced named cycle constants (removed magic numbers)
           * Added target pulse logic for distributed integration pulses
           * Latch comparator sign only at integrate→deintegrate transition
           * Added measurement enable output for deintegration window
           * Refactored FSM for improved readability and maintainability
--------------------------------------------------------------------------------
*/

module state_machine (
    input wire clk_i,
    input wire rst_n_i,

    // Inputs from MCU
    input wire trigger_i,

    // Outputs to MCU
    output wire digital_ready_o,

    // Inputs from AFE
    input wire comp_i,
    input wire analog_ready_i,

    // Outputs to AFE
    output wire [1:0] afe_sel_o,
    output wire ref_sign_o,

    // Inputs from Counters
    input wire [4:0] cycle_count_i,
    input wire [9:0] pulse_count_i,
    input wire [11:0] measurement_count_i

    // Outputs to Counters
    output wire measurement_en_o
);

    // ---------------------------------------------------------
    // Declarations
    // ---------------------------------------------------------

    // State machine
    localparam S_IDLE = 2'b00;
    localparam S_AUTO_ZERO = 2'b01;
    localparam S_INTEGRATE = 2'b10;
    localparam S_DEINTEGRATE = 2'b11;

    reg [1:0] current_state, next_state;

    // Range select
    localparam RANGE_1 = 2'b00;
    localparam RANGE_2 = 2'b01;
    localparam RANGE_3 = 2'b10;
    localparam RANGE_4 = 2'b11;

    reg [1:0] current_range, next_range;

    // Cycle select
    localparam FIRST_AUTO_ZERO_CYCLE = 5'd1;
    localparam FIRST_INTEGRATE_CYCLE = 5'd2;
    localparam FIRST_DEINTEGRATE_CYCLE = 5'd6;
    localparam SECOND_AUTO_ZERO_CYCLE = 5'd3;
    localparam SECOND_INTEGRATE_CYCLE = 5'd4;
    localparam SECOND_DEINTEGRATE_CYCLE = 5'd8;
    localparam THIRD_AUTO_ZERO_CYCLE = 5'd5;
    localparam THIRD_INTEGRATE_CYCLE = 5'd6;
    localparam THIRD_DEINTEGRATE_CYCLE = 5'd10;
    localparam FOURTH_AUTO_ZERO_CYCLE = 5'd7;
    localparam FOURTH_INTEGRATE_CYCLE = 5'd17;
    localparam FOURTH_DEINTEGRATE_CYCLE = 5'd21;
    localparam FINAL_CYCLE = 5'd24;

    reg [4:0] current_target_cycle, next_target_cycle;

    // Pulse select
    reg [9:0] current_target_pulse, next_target_pulse;

    // Comp previous
    reg comp_prev;

    // ---------------------------------------------------------
    // Implementation
    // ---------------------------------------------------------

    // Current state logic
    always @(posedge clk_i or negedge rst_n_i) begin 
        if (!rst_n_i) begin
            current_state <= S_IDLE;
        end else begin
            current_state <= next_state;
        end
    end
    
    // Next state logic
    always @(*) begin
        next_state = current_state;
        case (current_state)
            S_IDLE: begin
                if(trigger_i && analog_ready_i) begin
                    next_state = S_AUTO_ZERO;
                end 
            end
            S_AUTO_ZERO: begin
                if(cycle_count_i == current_target_cycle) begin
                    next_state = S_INTEGRATE;
                end else begin 
                    if(cycle_count_i == FINAL_CYCLE) begin
                        next_state = S_IDLE;
                    end
                end
            end
            S_INTEGRATE: begin
                if(cycle_count_i == current_target_cycle) begin
                    next_state = S_DEINTEGRATE;
                end
            end
            S_DEINTEGRATE: begin
                if((cycle_count_i == current_target_cycle) || (comp_i != comp_prev)) begin
                    next_state = S_AUTO_ZERO;
                end 
            end
        endcase
    end

    // Current Target Cycle logic
    always @(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            current_target_cycle <= FIRST_AUTO_ZERO_CYCLE;
        end else begin
            current_target_cycle <= next_target_cycle;
        end
    end

    // Next Target Cycle logic
    always @(*) begin
        case(next_state)
            S_AUTO_ZERO: begin
                if(current_target_cycle == FIRST_DEINTEGRATE_CYCLE) begin
                    next_target_cycle = SECOND_AUTO_ZERO_CYCLE;
                end
                if(current_target_cycle == SECOND_DEINTEGRATE_CYCLE) begin
                    next_target_cycle = THIRD_AUTO_ZERO_CYCLE;
                end
                if(current_target_cycle == THIRD_DEINTEGRATE_CYCLE) begin
                    next_target_cycle = FOURTH_AUTO_ZERO_CYCLE;
                end
                if(current_target_cycle == FOURTH_DEINTEGRATE_CYCLE || measurement_count_i >= 12'd360) begin
                    next_target_cycle = FIRST_AUTO_ZERO_CYCLE;
                end
            end
            S_INTEGRATE: begin
                if(current_target_cycle == FIRST_AUTO_ZERO_CYCLE) begin
                    next_target_cycle = FIRST_INTEGRATE_CYCLE;
                end
                if(current_target_cycle == SECOND_AUTO_ZERO_CYCLE) begin
                    next_target_cycle = SECOND_INTEGRATE_CYCLE;
                end
                if(current_target_cycle == THIRD_AUTO_ZERO_CYCLE) begin
                    next_target_cycle = THIRD_INTEGRATE_CYCLE;
                end
                if(current_target_cycle == FOURTH_AUTO_ZERO_CYCLE) begin
                    next_target_cycle = FOURTH_INTEGRATE_CYCLE;
                end   
            end
            S_DEINTEGRATE: begin
                if(current_target_cycle == FIRST_INTEGRATE_CYCLE) begin
                    next_target_cycle = FIRST_DEINTEGRATE_CYCLE;
                end
                if(current_target_cycle == SECOND_INTEGRATE_CYCLE) begin
                    next_target_cycle = SECOND_DEINTEGRATE_CYCLE;
                end
                if(current_target_cycle == THIRD_INTEGRATE_CYCLE) begin
                    next_target_cycle = THIRD_DEINTEGRATE_CYCLE;
                end
                if(current_target_cycle == FOURTH_INTEGRATE_CYCLE) begin
                    next_target_cycle = FOURTH_DEINTEGRATE_CYCLE;
                end
            end
            default: begin
                next_target_cycle = FIRST_AUTO_ZERO_CYCLE;
            end
        endcase
    end

    // Current Range logic
    always @(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            current_range <= RANGE_1;
        end else begin
            current_range <= next_range;
        end
    end
    
    // Next Range logic
    always @(*) begin
        if(current_target_cycle == FIRST_DEINTEGRATE_CYCLE and next_target_cycle == SECOND_AUTO_ZERO_CYCLE) begin
            next_range = RANGE_2;
        end
        if(current_target_cycle == SECOND_DEINTEGRATE_CYCLE and next_target_cycle == THIRD_AUTO_ZERO_CYCLE) begin
            next_range = RANGE_3;
        end
        if(current_target_cycle == THIRD_DEINTEGRATE_CYCLE and next_target_cycle == FOURTH_AUTO_ZERO_CYCLE) begin
            next_range = RANGE_4;
        end
        if(current_target_cycle == FOURTH_DEINTEGRATE_CYCLE and next_target_cycle == FIRST_AUTO_ZERO_CYCLE) begin
            next_range = RANGE_1;
        end
    end

    // AFE control logic
    always @(*) begin
        case(current_state)
            S_IDLE: begin
                afe_sel_o = AFE_IDLE;
            end
            S_AUTO_ZERO: begin
                afe_sel_o = AFE_AUTO_ZERO;
            end
            S_INTEGRATE: begin
                case(current_range)
                    RANGE_1: begin
                        if(pulse_count_i == current_target_pulse) begin
                            afe_sel_o = AFE_INTEGRATE;
                        end else begin
                            afe_sel_o = AFE_IDLE;
                        end
                    end
                    RANGE_2: begin
                        if(pulse_count_i == current_target_pulse) begin
                            afe_sel_o = AFE_INTEGRATE;
                        end else begin
                            afe_sel_o = AFE_IDLE;
                        end
                    end
                    RANGE_3: begin
                        afe_sel_o = AFE_INTEGRATE;
                    end
                    RANGE_4: begin
                        afe_sel_o = AFE_INTEGRATE;
                    end
                endcase
            end
            S_DEINTEGRATE: begin
                afe_sel_o = AFE_DEINTEGRATE;
            end
        endcase
    end

    // Current Target Pulse logic
    always @(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            current_target_pulse <= 10'd100;
        end else begin
            current_target_pulse <= next_target_pulse;
        end 
    end

    // Next Target Pulse logic
    always @(*) begin
        if(current_state == S_INTEGRATE) begin
            if(current_range == RANGE_1 && next_range == RANGE_2) begin
                next_target_pulse = 10'd10;
            end
            if(current_range == RANGE_1) begin
                next_target_pulse = current_target_pulse + 10'd100;
            end
            if(current_range == RANGE_2) begin
                next_target_pulse = current_target_pulse + 10'd10;
            end
        end
    end

    // Comp Previous logic
    always @(posedge clk_i or negedge rst_n_i) begin
        if(!rst_n_i) begin
            comp_prev <= 1'b0;
        end else begin
            if((current_state == S_INTEGRATE) && (next_state == S_DEINTEGRATE)) begin
                comp_prev <= comp_i;
            end 
        end
    end

    assign digital_ready_o = (current_state == S_IDLE);;
    assign measurement_en_o = (current_state == S_DEINTEGRATE);
    assign ref_sign_o = comp_prev;

endmodule