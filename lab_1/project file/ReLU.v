module ReLU(
    input wire[7:0]data_i,
    output reg[7:0]q
);
always @(data_i or q)
begin
    if(data_i[7]==1) begin
        q=8'd0;
    end
    else begin
        q=data_i;
    end
end
endmodule