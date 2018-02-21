//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Name      : AHB_MUX.sv : Multiplexer module for selceting which slave ouput data should be read              //
// Subject   : Introduction to SystemVerilog [ECE 571]                                                          //
// Term      : Winter 2018                                                                                      //
// Project   : AHBLite RTL Design and Verification using Emulator                                               //
// Authors   : Aarti R. | Ashwini K. | Kushal S. | Suprita K.                                                   //
// Guide     : Roy Kravitz                                                                                      //
// Date      : 02/20/2018                                                                                       //
// Revision  :                                                                                                  //
// Reference :                                                                                                  //
// Portland State University                                                                                    //
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////


import Definitions::*;

module AMBA_MUX
(
input  logic   MUX_SEL, 
input  Slave_t slave_0, slave_1,
output Slave_t mux_out);

always_comb 
	begin
	mux_out= MUX_SEL ? slave_1 : slave_0 ;
	end
endmodule

