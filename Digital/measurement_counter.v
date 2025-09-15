module measurement_counter (
    input wire clk_i,
    input wire rst_n_i,
    input wire measurement_en_i,
    output wire [11:0] measurement_count_o
);
    reg [11:0] current_measurement_count, next_measurement_count;

    always @(posedge clk_i or negedge rst_n_i) begin
        if (!rst_n_i) begin
            current_measurement_count <= 12'd0;
        end else begin
            current_measurement_count <= next_measurement_count;
        end
    end

    always @(*) begin
        next_measurement_count = current_measurement_count;
        if(measurement_en_i) begin
            next_measurement_count = current_measurement_count + 1'b1;
        end
    end

    assign measurement_count_o = current_measurement_count;

endmodule