`timescale 1ns/10ps
module testbench();
reg [7:0]data_input;
wire [7:0]data_output;
ReLU Relu(.data_i(data_input),.q(data_output));
initial fork
        data_input=-8'd99;
    #100 data_input=8'd0;
    #200 data_input=8'd127;
join
endmodule