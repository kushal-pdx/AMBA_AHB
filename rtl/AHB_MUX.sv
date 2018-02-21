import Definitions::*;
module AMBA_MUX
 (
input logic MUX_SEL, 
input  Slave_t slave_0, slave_1,
output Slave_t mux_out);

always_comb begin
	mux_out= MUX_SEL ? slave_1 : slave_0 ;
	end
endmodule

