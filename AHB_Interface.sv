//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Name      : AHB_Interface.sv : Interface Implementation of AHB_BUS for group of interconnections             //
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

interface Hbus (input logic HCLK, HRESETn);
	
	logic [DATAWIDTH-1:0] HWDATA;      // Write Data signal from Master to Slaves
	logic [DATAWIDTH-1:0] HRDATA;      // Read Data signal from Multiplexer to Master
	logic [ADDRWIDTH-1:0] HADDR;       // Address Signal from Master to slaves & Decoder
 
	
endinterface




