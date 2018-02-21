module AMBA_MUX (
input logic slave_SEL, 
input logic [33:0] slave_0_cd, slave_1_cd,
output logic [33:0] slave_cd);

always_comb begin
	slave_cd = slave_SEL ? slave_1_cd : slave_0_cd ;
	end
endmodule

