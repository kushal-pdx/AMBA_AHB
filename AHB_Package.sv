//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Name      : AHB_Package.sv : Common Package to store common definitions for AHBLite RTL Design               //
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



`ifndef DEFS
	'define DEFS


package Definitions;

parameter DATAWIDTH = 32;
parameter ADDRWIDTH = 32;

endpackage



import Definitions ::*;
`endif
