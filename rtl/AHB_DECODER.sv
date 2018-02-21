import Definitions::*;

module AMBA_DECODER (
input Master_t [31:0] HADDR,
output logic HSEL0, HSEL1, MUX_SEL );


always_comb begin
	if (HADDR[31])
		{HSEL0,HSEL1} = 10;
	else
		{HSEL0,HSEL1} = 01;
	MUX_SEL = HADDR[31];
	end

endmodule
