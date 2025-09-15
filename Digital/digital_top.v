/*
--------------------------------------------------------------------------------
 Title        : digital_top
 Project      : 180-voltmeter
 File         : digital_top.v
 Description  : Top-level digital control module that orchestrates the voltmeter
                system. Integrates analog signal sanitization, SPI slave interface,
                and provides control signals to the analog front-end. Handles
                communication with external SPI master and manages analog control
                outputs for measurement operations.
 
 Author       : Tristan Wood tdwood2@ncsu.edu
 Created      : 2025-08-13
 License      : See LICENSE in the project root

 Revision History:
   - 0.1 2025-08-13 Tristan Wood Initial implementation with analog sanitizer and SPI slave
--------------------------------------------------------------------------------
*/

module digital_top (
    // Analog Signals
    input wire comp_i,
    input wire analog_ready_i,

    // Digital Signals
    input wire clk_i,
    input wire rst_n_i,

    // -- State Machine Signals
    output wire [1:0] afe_sel_o,
    output wire mode_sel_o,
    output wire ref_sign_o,

    // -- SPI Signals
    input wire spi_sclk_i,
    input wire spi_cs_i,
    input wire spi_mosi_i,
    output wire spi_miso_o,
    output wire interrupt_o,

    // -- Debug Interface Signals
    input wire [31:0] dbg_ctrl_i,     // Debug control input signals
    output wire [31:0] dbg_status_o    // Debug status output signals
);
    //---------------------------------------------------------
    // Declarations
    //---------------------------------------------------------
    wire comp, analog_ready;  // Sanitized analog signals

    wire trigger;
    wire digital_ready;
    wire [4:0] cycle_count;
    wire [9:0] pulse_count;
    wire stop;
    wire increment;

    wire [31:0] tx_data_in;
    wire [31:0] tx_data_out;

    wire measurement_en;
    wire [11:0] measurement_count;

    //---------------------------------------------------------
    // Instantiations
    //---------------------------------------------------------

    // Analog 
    sync_and_filter sync_and_filter_comp_inst (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .async_i(comp_i),
        .clean_out_o(comp)
    );

    sync_and_filter sync_and_filter_analog_ready_inst (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .async_i(analog_ready_i),
        .clean_out_o(analog_ready)
    );

    // State Machine
    state_machine state_machine_inst (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .trigger_i(trigger),
        .digital_ready_o(digital_ready),
        .comp_i(comp),
        .analog_ready_i(analog_ready),
        .afe_sel_o(afe_sel_o),
        .ref_sign_o(ref_sign_o),
        .cycle_count_i(cycle_count),
        .pulse_count_i(pulse_count),
        .measurement_count_i(measurement_count),
        .measurement_en_o(measurement_en)
    );

    // Counters
    cycle_counter cycle_counter_inst (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .increment_i(increment),
        .stop_o(stop),
        .cycle_count_o(cycle_count)
    );

    pulse_counter pulse_counter_inst (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .trigger_i(trigger),
        .stop_i(stop),
        .increment_o(increment),
        .pulse_count_o(pulse_count)
    );

    measurement_counter measurement_counter_inst (
        .clk_i(clk_i),
        .rst_n_i(rst_n_i),
        .measurement_en_i(measurement_en),
        .measurement_count_o(measurement_count)
    );
    
    // SPI slave instance
    spi_slave #(
        .SPI_MODE(0)
    ) spi_slave_inst (
        .i_Rst_L(rst_n_i),
        .i_Clk(clk_i),
        .o_RX_DV(interrupt_o),
        .o_RX_Byte(tx_data_in),
        .i_TX_DV(stop),
        .i_TX_Byte(tx_data_out),
        .i_SPI_Clk(spi_sclk_i),
        .o_SPI_MISO(spi_miso_o),
        .i_SPI_MOSI(spi_mosi_i),
        .i_SPI_CS_n(spi_cs_i)
    );

    //---------------------------------------------------------
    // Assignments
    //---------------------------------------------------------

    // Debug Status Register
    assign tx_data_out[15:0] = {4'b0, measurement_count};
    assign tx_data_out[16] = comp;
    assign tx_data_out[17] = analog_ready;
    assign tx_data_out[18] = stop;
    assign tx_data_out[19] = digital_ready;
    assign tx_data_out[21:20] = afe_sel_o;
    assign tx_data_out[24:22] = range_sel_o;
    assign tx_data_out[25] = afe_reset_o;
    assign tx_data_out[26] = ref_sign_o;
    assign tx_data_out[27] = range_error_o;
    assign tx_data_out[28] = done;
    assign tx_data_out[29] = counter_done;
    assign tx_data_out[30] = counter_en;
    assign tx_data_out[31] = counter_clear;

    assign dbg_status_o[15:0] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[15:0] : counter_count;
    assign dbg_status_o[16] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[16] : comp_o;
    assign dbg_status_o[17] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[17] : sat_hi_o;
    assign dbg_status_o[18] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[18] : sat_lo_o;
    assign dbg_status_o[19] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[19] : ref_ok_o;
    assign dbg_status_o[21:20] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[21:20] : afe_sel_o;
    assign dbg_status_o[24:22] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[24:22] : range_sel_o;
    assign dbg_status_o[25] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[25] : afe_reset_o;
    assign dbg_status_o[26] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[26] : ref_sign_o;
    assign dbg_status_o[27] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[27] : range_error_o;
    assign dbg_status_o[28] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[28] : done;
    assign dbg_status_o[29] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[29] : counter_done;
    assign dbg_status_o[30] = (tx_data_in[31] || dbg_ctrl_i[31]) ? tx_data_in[30] : counter_en;
    assign dbg_status_o[31] = tx_data_in[31];

endmodule