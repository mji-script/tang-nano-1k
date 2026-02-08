module top(
    input wire clk,
    input wire rst,
    output wire leda,
    output wire ledb,
    output wire ledc);
reg [24:0] banana;
reg [2:0] mela;
always @(posedge clk) begin
    if (!rst) begin
        banana <= 0;
        mela <= 0;
    end
    else if (banana==25'd26_999_999) begin
        banana <= 0;
        mela <= mela + 3'd1;
    end
    else begin
        banana <= banana + 25'd1;
    end
end
assign leda = mela[0];
assign ledb = mela[1];
assign ledc = mela[2];
endmodule