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

parameter DATAWIDTH       = 32;
parameter ADDRWIDTH       = 32;
parameter Trans_Types     = 4;
parameter Trans_Width     = $clog2(Trans_Types);


//---------------------------------------Tranfer types' enumeration------------------------------------------
typedef enum logic [1:0] {
IDLE   = 2'b00,
BUSY   = 2'b01,
NONSEQ = 2'b10,
SEQ    = 2'b11 } Trans_t;


endpackage



import Definitions ::*;
`endif
