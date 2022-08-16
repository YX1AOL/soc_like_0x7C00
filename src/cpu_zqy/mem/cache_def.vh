`define encoder4_2(x) {{x[2] | x[3]}, {x[1] | x[3]}}

`define ENABLE_CACHE_OP

//* Note: when cache is connected to a 4-to-1 crossbar, AXI id
//* shouldn't bigger than 4'd3
//* Since the crossbar adds a prefix, there's no AXI ID collision

`define I_CACHE_ARID        4'd0
`define I_CACHE_RID         `I_CACHE_ARID

`define D_CACHE_ARID        4'd0
`define D_CACHE_RID         `D_CACHE_ARID
`define D_CACHE_AWID        4'd0
`define D_CACHE_WID         `D_CACHE_AWID
`define D_CACHE_BID         `D_CACHE_AWID

`define I_UNCACHE_ARID      4'd0
`define I_UNCACHE_RID       `I_UNCACHE_ARID

`define D_UNCACHE_ARID      4'd0
`define D_UNCACHE_RID       `D_UNCACHE_ARID

`define D_UNCACHE_AWID      4'd0
`define D_UNCACHE_WID       `D_UNCACHE_AWID
`define D_UNCACHE_BID       `D_UNCACHE_AWID
