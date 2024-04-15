module SiLU(
    input wire[3:0] data_i,
    output reg[15:0] q
);
always @(data_i or q)
begin
    case(data_i)
        4'b1000: q=16'hFFF5;
        4'b1001: q=16'hFFE6;
        4'b1010: q=16'hFFC3;
        4'b1011: q=16'hFF77;
        4'b1101: q=16'hFDB9;
        4'b1110: q=16'hFC2F;
        4'b1111: q=16'hFBB2;
        4'b0000: q=16'h0000;
        4'b0001: q=16'h0BB2;
        4'b0010: q=16'h1C2F;
        4'b0011: q=16'h2DB9;
        4'b0100: q=16'h3ED9;
        4'b0101: q=16'h4F77;
        4'b0110: q=16'h5FC3;
        4'b0111: q=16'h6FE6;
    endcase
end
endmodule
