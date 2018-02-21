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


package Definitions;

parameter DATAWIDTH       = 32;
parameter ADDRWIDTH       = 32;
parameter TRANS_WIDTH     = 2;
parameter BURST_SIZE      = 3;
parameter BURST_TYPE      = 3;

logic HSEL0, HSEL1, MUX_SEL;                       // Confusion for this line existance
logic HRESETn, HCLK;                               // Confusion for this line existance

//---------------------------------------Tranfer types' enumeration------------------------------------------

typedef enum logic [TRANS_WIDTH-1:0] 
{
IDLE   = 2'b00,
BUSY   = 2'b01,
NONSEQ = 2'b10,
SEQ    = 2'b11 
} Trans_t;


//---------------------------------------STRUCTURE for Address and Data--------------------------------------

typedef struct  
{
 logic [ADDRWIDTH-1:0]	HADDR;
 logic [DATAWIDTH-1:0]	HWDATA; 
} Instruction_t;


//---------------------------------------Signal for Slave----------------------------------------------------

typedef struct 
{
 logic [DATAWIDTH-1:0] HRDATA;
 logic                 HRESP;
 logic                 HREADYOUT; 
} Slave_t;

Slave_t slave_0, slave_1, mux_out;


//--------------------------------------Structure for Master o/p signal--------------------------------------
struct 
{
 Instruction_t HADDR;                                // Confusion
 Instruction_t HWDATA;                               // Confusion
 logic         HWRITE;
 logic         HMASTLOCK;
 logic         HREADY;
 Trans_t       [TRANS_WIDTH-1:0] HTRANS;
 logic         [BURST_SIZE-1:0]  HSIZE;
 logic         [BURST_TYPE-1:0]  HBURST;
 logic         [3:0]             HPROT;
} Master_t;

 
 
endpackage


