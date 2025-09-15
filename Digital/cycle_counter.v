module cycle_counter (
    input wire clk_i,
    input wire rst_n_i,
    input wire increment_i,
    output wire stop_o,
    output wire [4:0] cycle_count_o
);
    reg [4:0] current_cycle_count, next_cycle_count;

    always @(posedge clk_i or negedge rst_n_i) begin
        if (!rst_n_i) begin
            current_cycle_count <= 5'd0;
        end else begin
            current_cycle_count <= next_cycle_count;
        end
    end

    always @(*) begin
        next_cycle_count = current_cycle_count;
        if(increment_i) begin
            next_cycle_count = current_cycle_count + 1'b1;
        end
        if(current_cycle_count == 5'd24) begin
            next_cycle_count = 5'd0;
        end
    end

    assign cycle_count_o = current_cycle_count;
    assign stop_o = current_cycle_count == 5'd24;

endmodule