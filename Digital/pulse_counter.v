module pulse_counter (
    input wire clk_i,
    input wire rst_n_i,
    input wire trigger_i,
    input wire stop_i,
    output wire increment_o,
    output wire [9:0] pulse_count_o
);
    reg en, next_en;
    reg [9:0] current_pulse_count, next_pulse_count;

    always @(posedge clk_i or negedge rst_n_i) begin
        if (!rst_n_i) begin
            en <= 1'b0;
        end else begin
            en <= next_en;
        end
    end

    always @(*) begin
        next_en = en;
        if(trigger_i) begin
            next_en = 1'b1;
        end
        if(stop_i) begin
            next_en = 1'b0;
        end
    end

    always @(posedge clk_i or negedge rst_n_i) begin
        if (!rst_n_i) begin
            current_pulse_count <= 10'd0;
        end else begin
            current_pulse_count <= next_pulse_count;
        end
    end

    always @(*) begin
        next_pulse_count = current_pulse_count;
        if(en) begin
            next_pulse_count = current_pulse_count + 1'b1;
        end
        if(current_pulse_count == 10'd1000) begin
            next_pulse_count = 10'd0;
        end
    end
    
    assign increment_o = current_pulse_count == 10'd1000;
    assign pulse_count_o = current_pulse_count;

endmodule