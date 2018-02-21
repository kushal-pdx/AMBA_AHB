module AHB_SLAVE (
input logic HSEL,

input logic [31:0] HADDR,
input logic HWRITE, HMASTLOCK, HREADY,
input logic [1:0] HTRANS,
input logic [2:0] HSIZE, HBURST,
input logic [3:0] HPROT,

input logic [31:0] HWDATA,

input logic HRESETn, HCLK, 

output logic HRESP, HREADYOUT,
output logic [31:0] HRDATA );
