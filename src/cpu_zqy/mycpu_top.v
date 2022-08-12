`timescale 1ns / 100ps

module mycpu_top(
    input  [5 :0]  ext_int,

    input          aclk   ,
    input          aresetn,

    output [3 :0]  arid   ,
    output [31:0]  araddr ,
    output [3 :0]  arlen  ,
    output [2 :0]  arsize ,
    output [1 :0]  arburst,
    output [1 :0]  arlock ,
    output [3 :0]  arcache,
    output [2 :0]  arprot ,
    output         arvalid,
    input          arready,

    input  [3 :0]  rid   ,
    input  [31:0]  rdata ,
    input  [1 :0]  rresp ,
    input          rlast ,
    input          rvalid,
    output         rready,

    output [3 :0]  awid   ,
    output [31:0]  awaddr ,
    output [3 :0]  awlen  ,
    output [2 :0]  awsize ,
    output [1 :0]  awburst,
    output [1 :0]  awlock ,
    output [3 :0]  awcache,
    output [2 :0]  awprot ,
    output         awvalid,
    input          awready,

    output [3 :0]  wid   ,
    output [31:0]  wdata ,
    output [3 :0]  wstrb ,
    output         wlast ,
    output         wvalid,
    input          wready,

    input  [3 :0]  bid   ,
    input  [1 :0]  bresp ,
    input          bvalid,
    output         bready,

    //debug interface
    output  [31:0]   debug_wb_pc_1,
    output  [3 :0]   debug_wb_rf_wen_1,
    output  [4 :0]   debug_wb_rf_wnum_1,
    output  [31:0]   debug_wb_rf_wdata_1,
    output  [31:0]   debug_wb_pc_2,
    output  [3 :0]   debug_wb_rf_wen_2,
    output  [4 :0]   debug_wb_rf_wnum_2,
    output  [31:0]   debug_wb_rf_wdata_2
);

    //-----------------Axi Singal------------------------------
    //------------Inst Cache-----------
    wire  [3 :0] inst_cache_arid   ;
    wire  [31:0] inst_cache_araddr ;
    wire  [3 :0] inst_cache_arlen  ;
    wire  [2 :0] inst_cache_arsize ;
    wire  [1 :0] inst_cache_arburst;
    wire  [1 :0] inst_cache_arlock ;
    wire  [3 :0] inst_cache_arcache;
    wire  [2 :0] inst_cache_arprot ;
    wire  [3 :0] inst_cache_arqos  ;
    wire         inst_cache_arvalid;
    wire         inst_cache_arready;

    wire  [3 :0] inst_cache_rid    ;
    wire  [31:0] inst_cache_rdata  ;
    wire  [1 :0] inst_cache_rresp  ;
    wire         inst_cache_rlast  ;
    wire         inst_cache_rvalid ;
    wire         inst_cache_rready ;

    wire  [3 :0] inst_cache_awid   ;
    wire  [31:0] inst_cache_awaddr ;
    wire  [3 :0] inst_cache_awlen  ;
    wire  [2 :0] inst_cache_awsize ;
    wire  [1 :0] inst_cache_awburst;
    wire  [1 :0] inst_cache_awlock ;
    wire  [3 :0] inst_cache_awcache;
    wire  [2 :0] inst_cache_awprot ;
    wire  [3 :0] inst_cache_awqos  ;
    wire         inst_cache_awvalid;
    wire         inst_cache_awready;

    wire  [3 :0] inst_cache_wid    ;
    wire  [31:0] inst_cache_wdata  ;
    wire  [3 :0] inst_cache_wstrb  ;
    wire         inst_cache_wlast  ;
    wire         inst_cache_wvalid ;
    wire         inst_cache_wready;

    wire  [3 :0] inst_cache_bid     ;
    wire  [1 :0] inst_cache_bresp   ;
    wire         inst_cache_bvalid  ;
    wire         inst_cache_bready ;

    //-----------Inst Uncache
    wire  [3 :0] inst_uncache_arid   ;
    wire  [31:0] inst_uncache_araddr ;
    wire  [3 :0] inst_uncache_arlen  ;
    wire  [2 :0] inst_uncache_arsize ;
    wire  [1 :0] inst_uncache_arburst;
    wire  [1 :0] inst_uncache_arlock ;
    wire  [3 :0] inst_uncache_arcache;
    wire  [2 :0] inst_uncache_arprot ;
    wire  [3 :0] inst_uncache_arqos  ;
    wire         inst_uncache_arvalid;
    wire         inst_uncache_arready;

    wire  [3 :0] inst_uncache_rid    ;
    wire  [31:0] inst_uncache_rdata  ;
    wire  [1 :0] inst_uncache_rresp  ;
    wire         inst_uncache_rlast  ;
    wire         inst_uncache_rvalid ;
    wire         inst_uncache_rready ;

    wire  [3 :0] inst_uncache_awid   ;
    wire  [31:0] inst_uncache_awaddr ;
    wire  [3 :0] inst_uncache_awlen  ;
    wire  [2 :0] inst_uncache_awsize ;
    wire  [1 :0] inst_uncache_awburst;
    wire  [1 :0] inst_uncache_awlock ;
    wire  [3 :0] inst_uncache_awcache;
    wire  [2 :0] inst_uncache_awprot ;
    wire  [3 :0] inst_uncache_awqos  ;
    wire         inst_uncache_awvalid;
    wire         inst_uncache_awready;

    wire  [3 :0] inst_uncache_wid    ;
    wire  [31:0] inst_uncache_wdata  ;
    wire  [3 :0] inst_uncache_wstrb  ;
    wire         inst_uncache_wlast  ;
    wire         inst_uncache_wvalid ;
    wire         inst_uncache_wready ;

    wire  [3 :0] inst_uncache_bid    ;
    wire  [1 :0] inst_uncache_bresp  ;
    wire         inst_uncache_bvalid ;
    wire         inst_uncache_bready;

    //------------Data Cache
    wire  [3 :0] data_cache_arid   ;
    wire  [31:0] data_cache_araddr ;
    wire  [3 :0] data_cache_arlen  ;
    wire  [2 :0] data_cache_arsize ;
    wire  [1 :0] data_cache_arburst;
    wire  [1 :0] data_cache_arlock ;
    wire  [3 :0] data_cache_arcache;
    wire  [2 :0] data_cache_arprot ;
    wire  [3 :0] data_cache_arqos  ;
    wire         data_cache_arvalid;
    wire         data_cache_arready;

    wire  [3 :0] data_cache_rid    ;
    wire  [31:0] data_cache_rdata  ;
    wire  [1 :0] data_cache_rresp  ;
    wire         data_cache_rlast  ;
    wire         data_cache_rvalid ;
    wire         data_cache_rready ;

    wire  [3 :0] data_cache_awid   ;
    wire  [31:0] data_cache_awaddr ;
    wire  [3 :0] data_cache_awlen  ;
    wire  [2 :0] data_cache_awsize ;
    wire  [1 :0] data_cache_awburst;
    wire  [1 :0] data_cache_awlock ;
    wire  [3 :0] data_cache_awcache;
    wire  [2 :0] data_cache_awprot ;
    wire  [3 :0] data_cache_awqos  ;
    wire         data_cache_awvalid;
    wire         data_cache_awready;

    wire  [3 :0] data_cache_wid    ;
    wire  [31:0] data_cache_wdata  ;
    wire  [3 :0] data_cache_wstrb  ;
    wire         data_cache_wlast  ;
    wire         data_cache_wvalid ;
    wire         data_cache_wready ;

    wire  [3 :0] data_cache_bid    ;
    wire  [1 :0] data_cache_bresp  ;
    wire         data_cache_bvalid ;
    wire         data_cache_bready ;

    //-----------Data Uncache
    wire  [3 :0] data_uncache_arid   ;
    wire  [31:0] data_uncache_araddr ;
    wire  [3 :0] data_uncache_arlen  ;
    wire  [2 :0] data_uncache_arsize ;
    wire  [1 :0] data_uncache_arburst;
    wire  [1 :0] data_uncache_arlock ;
    wire  [3 :0] data_uncache_arcache;
    wire  [2 :0] data_uncache_arprot ;
    wire  [3 :0] data_uncache_arqos  ;
    wire         data_uncache_arvalid;
    wire         data_uncache_arready;

    wire  [3 :0] data_uncache_rid    ;
    wire  [31:0] data_uncache_rdata  ;
    wire  [1 :0] data_uncache_rresp  ;
    wire         data_uncache_rlast  ;
    wire         data_uncache_rvalid ;
    wire         data_uncache_rready ;

    wire  [3 :0] data_uncache_awid   ;
    wire  [31:0] data_uncache_awaddr ;
    wire  [3 :0] data_uncache_awlen  ;
    wire  [2 :0] data_uncache_awsize ;
    wire  [1 :0] data_uncache_awburst;
    wire  [1 :0] data_uncache_awlock ;
    wire  [3 :0] data_uncache_awcache;
    wire  [2 :0] data_uncache_awprot ;
    wire  [3 :0] data_uncache_awqos  ;
    wire         data_uncache_awvalid;
    wire         data_uncache_awready;

    wire  [3 :0] data_uncache_wid    ;
    wire  [31:0] data_uncache_wdata  ;
    wire  [3 :0] data_uncache_wstrb  ;
    wire         data_uncache_wlast  ;
    wire         data_uncache_wvalid ;
    wire         data_uncache_wready ;

    wire  [3 :0] data_uncache_bid    ;
    wire  [1 :0] data_uncache_bresp  ;
    wire         data_uncache_bvalid ;
    wire         data_uncache_bready ;

    mycpu U_mycpu(
        .ext_int    (ext_int),

        .aclk       (aclk),
        .aresetn    (aresetn),

        //------------Inst Cache-----------
        .inst_cache_arid       (inst_cache_arid   ),
        .inst_cache_araddr     (inst_cache_araddr ),
        .inst_cache_arlen      (inst_cache_arlen  ),
        .inst_cache_arsize     (inst_cache_arsize ),
        .inst_cache_arburst    (inst_cache_arburst),
        .inst_cache_arlock     (inst_cache_arlock ),
        .inst_cache_arcache    (inst_cache_arcache),
        .inst_cache_arprot     (inst_cache_arprot ),
        .inst_cache_arqos      (inst_cache_arqos  ),
        .inst_cache_arvalid    (inst_cache_arvalid),
        .inst_cache_arready    (inst_cache_arready),

        .inst_cache_rid        (inst_cache_rid    ),
        .inst_cache_rdata      (inst_cache_rdata  ),
        .inst_cache_rresp      (inst_cache_rresp  ),
        .inst_cache_rlast      (inst_cache_rlast  ),
        .inst_cache_rvalid     (inst_cache_rvalid ),
        .inst_cache_rready     (inst_cache_rready ),

        .inst_cache_awid        (inst_cache_awid    ),
        .inst_cache_awaddr      (inst_cache_awaddr  ),
        .inst_cache_awlen       (inst_cache_awlen   ),
        .inst_cache_awsize      (inst_cache_awsize  ),
        .inst_cache_awburst     (inst_cache_awburst ),
        .inst_cache_awlock      (inst_cache_awlock  ),
        .inst_cache_awcache     (inst_cache_awcache ),
        .inst_cache_awprot      (inst_cache_awprot  ),
        .inst_cache_awqos       (inst_cache_awqos  ),
        .inst_cache_awvalid     (inst_cache_awvalid ),
        .inst_cache_awready     (inst_cache_awready ),

        .inst_cache_wid         (inst_cache_wid     ),
        .inst_cache_wdata       (inst_cache_wdata   ),
        .inst_cache_wstrb       (inst_cache_wstrb   ),
        .inst_cache_wlast       (inst_cache_wlast   ),
        .inst_cache_wvalid      (inst_cache_wvalid  ),
        .inst_cache_wready      (inst_cache_wready  ),

        .inst_cache_bid         (inst_cache_bid     ),
        .inst_cache_bresp       (inst_cache_bresp   ),
        .inst_cache_bvalid      (inst_cache_bvalid  ),
        .inst_cache_bready      (inst_cache_bready  ),

    //-----------Inst Uncache
        .inst_uncache_arid       (inst_uncache_arid   ),
        .inst_uncache_araddr     (inst_uncache_araddr ),
        .inst_uncache_arlen      (inst_uncache_arlen  ),
        .inst_uncache_arsize     (inst_uncache_arsize ),
        .inst_uncache_arburst    (inst_uncache_arburst),
        .inst_uncache_arlock     (inst_uncache_arlock ),
        .inst_uncache_arcache    (inst_uncache_arcache),
        .inst_uncache_arprot     (inst_uncache_arprot ),
        .inst_uncache_arqos      (inst_uncache_arqos  ),
        .inst_uncache_arvalid    (inst_uncache_arvalid),
        .inst_uncache_arready    (inst_uncache_arready),

        .inst_uncache_rid        (inst_uncache_rid    ),
        .inst_uncache_rdata      (inst_uncache_rdata  ),
        .inst_uncache_rresp      (inst_uncache_rresp  ),
        .inst_uncache_rlast      (inst_uncache_rlast  ),
        .inst_uncache_rvalid     (inst_uncache_rvalid ),
        .inst_uncache_rready     (inst_uncache_rready ),

        .inst_uncache_awid       (inst_uncache_awid   ),
        .inst_uncache_awaddr     (inst_uncache_awaddr ),
        .inst_uncache_awlen      (inst_uncache_awlen  ),
        .inst_uncache_awsize     (inst_uncache_awsize ),
        .inst_uncache_awburst    (inst_uncache_awburst),
        .inst_uncache_awlock     (inst_uncache_awlock ),
        .inst_uncache_awcache    (inst_uncache_awcache),
        .inst_uncache_awprot     (inst_uncache_awprot ),
        .inst_uncache_awqos      (inst_uncache_awqos  ),
        .inst_uncache_awvalid    (inst_uncache_awvalid),
        .inst_uncache_awready    (inst_uncache_awready),

        .inst_uncache_wid        (inst_uncache_wid    ),
        .inst_uncache_wdata      (inst_uncache_wdata  ),
        .inst_uncache_wstrb      (inst_uncache_wstrb  ),
        .inst_uncache_wlast      (inst_uncache_wlast  ),
        .inst_uncache_wvalid     (inst_uncache_wvalid ),
        .inst_uncache_wready     (inst_uncache_wready ),

        .inst_uncache_bid        (inst_uncache_bid    ),
        .inst_uncache_bresp      (inst_uncache_bresp  ),
        .inst_uncache_bvalid     (inst_uncache_bvalid ),
        .inst_uncache_bready     (inst_uncache_bready ),

    //------------Data Cache
        .data_cache_arid       (data_cache_arid   ),
        .data_cache_araddr     (data_cache_araddr ),
        .data_cache_arlen      (data_cache_arlen  ),
        .data_cache_arsize     (data_cache_arsize ),
        .data_cache_arburst    (data_cache_arburst),
        .data_cache_arlock     (data_cache_arlock ),
        .data_cache_arcache    (data_cache_arcache),
        .data_cache_arprot     (data_cache_arprot ),
        .data_cache_arqos      (data_cache_arqos  ),
        .data_cache_arvalid    (data_cache_arvalid),
        .data_cache_arready    (data_cache_arready),

        .data_cache_rid        (data_cache_rid    ),
        .data_cache_rdata      (data_cache_rdata  ),
        .data_cache_rresp      (data_cache_rresp  ),
        .data_cache_rlast      (data_cache_rlast  ),
        .data_cache_rvalid     (data_cache_rvalid ),
        .data_cache_rready     (data_cache_rready ),

        .data_cache_awid       (data_cache_awid   ),
        .data_cache_awaddr     (data_cache_awaddr ),
        .data_cache_awlen      (data_cache_awlen  ),
        .data_cache_awsize     (data_cache_awsize ),
        .data_cache_awburst    (data_cache_awburst),
        .data_cache_awlock     (data_cache_awlock ),
        .data_cache_awcache    (data_cache_awcache),
        .data_cache_awprot     (data_cache_awprot ),
        .data_cache_awqos      (data_cache_awqos  ),
        .data_cache_awvalid    (data_cache_awvalid),
        .data_cache_awready    (data_cache_awready),

        .data_cache_wid        (data_cache_wid    ),
        .data_cache_wdata      (data_cache_wdata  ),
        .data_cache_wstrb      (data_cache_wstrb  ),
        .data_cache_wlast      (data_cache_wlast  ),
        .data_cache_wvalid     (data_cache_wvalid ),
        .data_cache_wready     (data_cache_wready ),

        .data_cache_bid        (data_cache_bid    ),
        .data_cache_bresp      (data_cache_bresp  ),
        .data_cache_bvalid     (data_cache_bvalid ),
        .data_cache_bready     (data_cache_bready ),

    //-----------Data Uncache
        .data_uncache_arid       (data_uncache_arid   ),
        .data_uncache_araddr     (data_uncache_araddr ),
        .data_uncache_arlen      (data_uncache_arlen  ),
        .data_uncache_arsize     (data_uncache_arsize ),
        .data_uncache_arburst    (data_uncache_arburst),
        .data_uncache_arlock     (data_uncache_arlock ),
        .data_uncache_arcache    (data_uncache_arcache),
        .data_uncache_arprot     (data_uncache_arprot ),
        .data_uncache_arqos      (data_uncache_arqos  ),
        .data_uncache_arvalid    (data_uncache_arvalid),
        .data_uncache_arready    (data_uncache_arready),

        .data_uncache_rid        (data_uncache_rid    ),
        .data_uncache_rdata      (data_uncache_rdata  ),
        .data_uncache_rresp      (data_uncache_rresp  ),
        .data_uncache_rlast      (data_uncache_rlast  ),
        .data_uncache_rvalid     (data_uncache_rvalid ),
        .data_uncache_rready     (data_uncache_rready ),

        .data_uncache_awid       (data_uncache_awid   ),
        .data_uncache_awaddr     (data_uncache_awaddr ),
        .data_uncache_awlen      (data_uncache_awlen  ),
        .data_uncache_awsize     (data_uncache_awsize ),
        .data_uncache_awburst    (data_uncache_awburst),
        .data_uncache_awlock     (data_uncache_awlock ),
        .data_uncache_awcache    (data_uncache_awcache),
        .data_uncache_awprot     (data_uncache_awprot ),
        .data_uncache_awqos      (data_uncache_awqos  ),
        .data_uncache_awvalid    (data_uncache_awvalid),
        .data_uncache_awready    (data_uncache_awready),

        .data_uncache_wid        (data_uncache_wid    ),
        .data_uncache_wdata      (data_uncache_wdata  ),
        .data_uncache_wstrb      (data_uncache_wstrb  ),
        .data_uncache_wlast      (data_uncache_wlast  ),
        .data_uncache_wvalid     (data_uncache_wvalid ),
        .data_uncache_wready     (data_uncache_wready ),

        .data_uncache_bid        (data_uncache_bid    ),
        .data_uncache_bresp      (data_uncache_bresp  ),
        .data_uncache_bvalid     (data_uncache_bvalid ),
        .data_uncache_bready     (data_uncache_bready ),


        //debug interface
        .debug_wb_pc_1       (debug_wb_pc_1),
        .debug_wb_rf_wen_1   (debug_wb_rf_wen_1),
        .debug_wb_rf_wnum_1  (debug_wb_rf_wnum_1),
        .debug_wb_rf_wdata_1 (debug_wb_rf_wdata_1),
        .debug_wb_pc_2       (debug_wb_pc_2),
        .debug_wb_rf_wen_2   (debug_wb_rf_wen_2),
        .debug_wb_rf_wnum_2  (debug_wb_rf_wnum_2),
        .debug_wb_rf_wdata_2 (debug_wb_rf_wdata_2)
    );

    //-----Axi Bridge
    axi_crossbar_0 u_axi_crossbar_0 (

        .aclk             (aclk   ),
        .aresetn          (aresetn),

        .s_axi_arid       ({data_cache_arid,        inst_cache_arid,        data_uncache_arid,          inst_uncache_arid}      ),
        .s_axi_araddr     ({data_cache_araddr,      inst_cache_araddr,      data_uncache_araddr,        inst_uncache_araddr}    ),
        .s_axi_arlen      ({data_cache_arlen,       inst_cache_arlen,       data_uncache_arlen,         inst_uncache_arlen}     ),
        .s_axi_arsize     ({data_cache_arsize,      inst_cache_arsize,      data_uncache_arsize,        inst_uncache_arsize}    ),
        .s_axi_arburst    ({data_cache_arburst,     inst_cache_arburst,     data_uncache_arburst,       inst_uncache_arburst}   ),
        .s_axi_arlock     ({data_cache_arlock,      inst_cache_arlock,      data_uncache_arlock,        inst_uncache_arlock}    ),
        .s_axi_arcache    ({data_cache_arcache,     inst_cache_arcache,     data_uncache_arcache,       inst_uncache_arcache}   ),
        .s_axi_arprot     ({data_cache_arprot,      inst_cache_arprot,      data_uncache_arprot,        inst_uncache_arprot}    ),
        .s_axi_arqos      ({data_cache_arqos,       inst_cache_arqos,       data_uncache_arqos,         inst_uncache_arqos}     ),
        .s_axi_arvalid    ({data_cache_arvalid,     inst_cache_arvalid,     data_uncache_arvalid,       inst_uncache_arvalid}   ),
        .s_axi_arready    ({data_cache_arready,     inst_cache_arready,     data_uncache_arready,       inst_uncache_arready}   ),

        .s_axi_rid        ({data_cache_rid,         inst_cache_rid,         data_uncache_rid,           inst_uncache_rid}       ),
        .s_axi_rdata      ({data_cache_rdata,       inst_cache_rdata,       data_uncache_rdata,         inst_uncache_rdata}     ),
        .s_axi_rresp      ({data_cache_rresp,       inst_cache_rresp,       data_uncache_rresp,         inst_uncache_rresp}     ),
        .s_axi_rlast      ({data_cache_rlast,       inst_cache_rlast,       data_uncache_rlast,         inst_uncache_rlast}     ),
        .s_axi_rvalid     ({data_cache_rvalid,      inst_cache_rvalid,      data_uncache_rvalid,        inst_uncache_rvalid}    ),
        .s_axi_rready     ({data_cache_rready,      inst_cache_rready,      data_uncache_rready,        inst_uncache_rready}    ),

        .s_axi_awid       ({data_cache_awid,        inst_cache_awid,        data_uncache_awid,          inst_uncache_awid}      ),
        .s_axi_awaddr     ({data_cache_awaddr,      inst_cache_awaddr,      data_uncache_awaddr,        inst_uncache_awaddr}    ),
        .s_axi_awlen      ({data_cache_awlen,       inst_cache_awlen,       data_uncache_awlen,         inst_uncache_awlen}     ),
        .s_axi_awsize     ({data_cache_awsize,      inst_cache_awsize,      data_uncache_awsize,        inst_uncache_awsize}    ),
        .s_axi_awburst    ({data_cache_awburst,     inst_cache_awburst,     data_uncache_awburst,       inst_uncache_awburst}   ),
        .s_axi_awlock     ({data_cache_awlock,      inst_cache_awlock,      data_uncache_awlock,        inst_uncache_awlock}    ),
        .s_axi_awcache    ({data_cache_awcache,     inst_cache_awcache,     data_uncache_awcache,       inst_uncache_awcache}   ),
        .s_axi_awprot     ({data_cache_awprot,      inst_cache_awprot,      data_uncache_awprot,        inst_uncache_awprot}    ),
        .s_axi_awqos      ({data_cache_awqos,       inst_cache_awqos,       data_uncache_awqos,         inst_uncache_awqos}     ),
        .s_axi_awvalid    ({data_cache_awvalid,     inst_cache_awvalid,     data_uncache_awvalid,       inst_uncache_awvalid}   ),
        .s_axi_awready    ({data_cache_awready,     inst_cache_awready,     data_uncache_awready,       inst_uncache_awready}   ),

        .s_axi_wid        ({data_cache_wid,         inst_cache_wid,         data_uncache_wid,           inst_uncache_wid}       ),
        .s_axi_wdata      ({data_cache_wdata,       inst_cache_wdata,       data_uncache_wdata,         inst_uncache_wdata}     ),
        .s_axi_wstrb      ({data_cache_wstrb,       inst_cache_wstrb,       data_uncache_wstrb,         inst_uncache_wstrb}     ),
        .s_axi_wlast      ({data_cache_wlast,       inst_cache_wlast,       data_uncache_wlast,         inst_uncache_wlast}     ),
        .s_axi_wvalid     ({data_cache_wvalid,      inst_cache_wvalid,      data_uncache_wvalid,        inst_uncache_wvalid}    ),
        .s_axi_wready     ({data_cache_wready,      inst_cache_wready,      data_uncache_wready,        inst_uncache_wready}    ),
        .s_axi_bid        ({data_cache_bid,         inst_cache_bid,         data_uncache_bid,           inst_uncache_bid}       ),
        .s_axi_bresp      ({data_cache_bresp,       inst_cache_bresp,       data_uncache_bresp,         inst_uncache_bresp}     ),
        .s_axi_bvalid     ({data_cache_bvalid,      inst_cache_bvalid,      data_uncache_bvalid,        inst_uncache_bvalid}    ),
        .s_axi_bready     ({data_cache_bready,      inst_cache_bready,      data_uncache_bready,        inst_uncache_bready}    ),

        .m_axi_arid       (arid   ),
        .m_axi_araddr     (araddr ),
        .m_axi_arlen      (arlen  ),
        .m_axi_arsize     (arsize ),
        .m_axi_arburst    (arburst),
        .m_axi_arlock     (arlock ),
        .m_axi_arcache    (arcache),
        .m_axi_arprot     (arprot ),
        .m_axi_arqos      (       ),
        .m_axi_arvalid    (arvalid),
        .m_axi_arready    (arready),
        .m_axi_rid        (rid    ),
        .m_axi_rdata      (rdata  ),
        .m_axi_rresp      (rresp  ),
        .m_axi_rlast      (rlast  ),
        .m_axi_rvalid     (rvalid ),
        .m_axi_rready     (rready ),
        .m_axi_awid       (awid   ),
        .m_axi_awaddr     (awaddr ),
        .m_axi_awlen      (awlen  ),
        .m_axi_awsize     (awsize ),
        .m_axi_awburst    (awburst),
        .m_axi_awlock     (awlock ),
        .m_axi_awcache    (awcache),
        .m_axi_awprot     (awprot ),
        .m_axi_awqos      (       ),
        .m_axi_awvalid    (awvalid),
        .m_axi_awready    (awready),
        .m_axi_wid        (wid    ),
        .m_axi_wdata      (wdata  ),
        .m_axi_wstrb      (wstrb  ),
        .m_axi_wlast      (wlast  ),
        .m_axi_wvalid     (wvalid ),
        .m_axi_wready     (wready ),
        .m_axi_bid        (bid    ),
        .m_axi_bresp      (bresp  ),
        .m_axi_bvalid     (bvalid ),
        .m_axi_bready     (bready )
    );
endmodule
