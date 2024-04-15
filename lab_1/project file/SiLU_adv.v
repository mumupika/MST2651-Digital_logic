module SiLU_adv(
    input wire signed [7:0] data_i,
    output reg signed [15:0] q
);
reg signed [15:0] temp;
reg signed[23:0] res;
reg signed [7:0] mid;
always @(*)
begin
    //temp: to extend the dot bit.
    temp = 0;
    if(data_i[7]==1'b1)
        begin
            mid=-data_i;
            temp[14:8] = mid[6:0];
        end
    else
        begin
            temp[14:8] = data_i[6:0];
        end
    //Temp try.
    if(temp>=16'b0101_0000_0000_0000)
        begin
            q=16'b0001_0000_0000_0000;
        end
    else if(temp<16'b0101_0000_0000_0000 && temp>=16'b0010_0110_0000_0000)
        begin
            q=(temp>>5)+16'b0000_1101_1000_0000;
        end
    else if(temp<16'b0010_0110_0000_0000 && temp>=16'b0001_0000_0000_0000)
        begin
            q=(temp>>3)+16'b0000_1010_0000_0000;
        end
    else if(temp<16'b0001_0000_0000_0000 && temp>=16'b0000_0000_0000_0000)
        begin
            q=(temp>>2)+16'b0000_1000_0000_0000;
        end
    if(data_i[7]==1'b1)
        begin
            q=16'b0001_000000000000-q;
        end
    res=q*data_i;
    q=res[19:4];
end
endmodule