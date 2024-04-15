`timescale 1ns/100ps
module testbench_2();
reg [3:0]data_input;
wire [15:0]data_output;
integer i;
SiLU Silu(.data_i(data_input),.q(data_output));
initial begin
    data_input=16'd0;
    for(i=-8;i<=7;i=i+1) begin
        #1;
        data_input=data_input+1;
    end
end
endmodule