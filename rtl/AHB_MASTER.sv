module AHB_MASTER (
input logic HRESP, HREADY,

input logic HRESETn, HCLK,

input logic [31:0] HDATA,

output logic [31:0] HADDR,
output logic HWRITE, HMASTLOCK, HREADY,
output logic [1:0] HTRANS,
output logic [2:0] HSIZE, HBURST,
output logic [3:0] HPROT);
