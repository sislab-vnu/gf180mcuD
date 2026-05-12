module counter (
    input  logic        clk_i,
    input  logic        rst_ni,   // active-low reset
    output logic [31:0] count_o   // 32-bit counter output
);
    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni)
            count_o <= 32'h0;
        else
            count_o <= count_o + 32'h1;
    end
endmodule
