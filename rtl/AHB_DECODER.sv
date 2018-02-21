module AMBA_DECODER (
input logic msb_address ,
output logic HSEL0, HSEL1, slave_SEL );

always_comb begin
	if (msb_address)
		{HSEL0,HSEL1} = 10;
	else
		{HSEL0,HSEL1} = 01;
	slave_SEL = msb_address;
	end

endmodule
