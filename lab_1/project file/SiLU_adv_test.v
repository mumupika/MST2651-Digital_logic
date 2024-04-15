`timescale 1ns/10ps
module testbench_3();
reg [7:0]data_input;
wire [15:0]data_output;
SiLU_adv silu_adv(.data_i(data_input),.q(data_output));
initial fork
        data_input=8'b1011_1100;
    #100 data_input=8'b0000_0000;
    #200 data_input=8'b0010_0010;
join
endmodule

