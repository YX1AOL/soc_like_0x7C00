`timescale 1ns / 100ps

module mycpu(
    input  [5 :0]  ext_int,

    input          aclk   ,
    input          aresetn,

    //------------Inst Cache-----------
    output  [3 :0] inst_cache_arid   ,
    output  [31:0] inst_cache_araddr ,
    output  [3 :0] inst_cache_arlen  ,
    output  [2 :0] inst_cache_arsize ,
    output  [1 :0] inst_cache_arburst,
    output  [1 :0] inst_cache_arlock ,
    output  [3 :0] inst_cache_arcache,
    output  [2 :0] inst_cache_arprot ,
    output  [3 :0] inst_cache_arqos  ,
    output         inst_cache_arvalid,
    input          inst_cache_arready,

    input   [3 :0] inst_cache_rid    ,
    input   [31:0] inst_cache_rdata  ,
    input   [1 :0] inst_cache_rresp  ,
    input          inst_cache_rlast  ,
    input          inst_cache_rvalid ,
    output         inst_cache_rready ,

    output  [3 :0] inst_cache_awid    ,
    output  [31:0] inst_cache_awaddr  ,
    output  [3 :0] inst_cache_awlen   ,
    output  [2 :0] inst_cache_awsize  ,
    output  [1 :0] inst_cache_awburst ,
    output  [1 :0] inst_cache_awlock  ,
    output  [3 :0] inst_cache_awcache ,
    output  [2 :0] inst_cache_awprot  ,
    output  [3 :0] inst_cache_awqos   ,
    output         inst_cache_awvalid ,
    input          inst_cache_awready,

    output  [3 :0] inst_cache_wid     ,
    output  [31:0] inst_cache_wdata   ,
    output  [3 :0] inst_cache_wstrb   ,
    output         inst_cache_wlast   ,
    output         inst_cache_wvalid  ,
    input          inst_cache_wready,

    input   [3 :0] inst_cache_bid     ,
    input   [1 :0] inst_cache_bresp   ,
    input          inst_cache_bvalid  ,
    output         inst_cache_bready  ,

    //-----------Inst Uncache
    output  [3 :0] inst_uncache_arid   ,
    output  [31:0] inst_uncache_araddr ,
    output  [3 :0] inst_uncache_arlen  ,
    output  [2 :0] inst_uncache_arsize ,
    output  [1 :0] inst_uncache_arburst,
    output  [1 :0] inst_uncache_arlock ,
    output  [3 :0] inst_uncache_arcache,
    output  [2 :0] inst_uncache_arprot ,
    output  [3 :0] inst_uncache_arqos  ,
    output         inst_uncache_arvalid,
    input          inst_uncache_arready,

    input   [3 :0] inst_uncache_rid    ,
    input   [31:0] inst_uncache_rdata  ,
    input   [1 :0] inst_uncache_rresp  ,
    input          inst_uncache_rlast  ,
    input          inst_uncache_rvalid ,
    output         inst_uncache_rready ,

    output  [3 :0] inst_uncache_awid   ,
    output  [31:0] inst_uncache_awaddr ,
    output  [3 :0] inst_uncache_awlen  ,
    output  [2 :0] inst_uncache_awsize ,
    output  [1 :0] inst_uncache_awburst,
    output  [1 :0] inst_uncache_awlock ,
    output  [3 :0] inst_uncache_awcache,
    output  [2 :0] inst_uncache_awprot ,
    output  [3 :0] inst_uncache_awqos  ,
    output         inst_uncache_awvalid,
    input          inst_uncache_awready,

    output  [3 :0] inst_uncache_wid    ,
    output  [31:0] inst_uncache_wdata  ,
    output  [3 :0] inst_uncache_wstrb  ,
    output         inst_uncache_wlast  ,
    output         inst_uncache_wvalid ,
    input          inst_uncache_wready ,

    input   [3 :0] inst_uncache_bid    ,
    input   [1 :0] inst_uncache_bresp  ,
    input          inst_uncache_bvalid ,
    output         inst_uncache_bready,

    //------------Data Cache
    output  [3 :0] data_cache_arid   ,
    output  [31:0] data_cache_araddr ,
    output  [3 :0] data_cache_arlen  ,
    output  [2 :0] data_cache_arsize ,
    output  [1 :0] data_cache_arburst,
    output  [1 :0] data_cache_arlock ,
    output  [3 :0] data_cache_arcache,
    output  [2 :0] data_cache_arprot ,
    output  [3 :0] data_cache_arqos  ,
    output         data_cache_arvalid,
    input          data_cache_arready,

    input   [3 :0] data_cache_rid    ,
    input   [31:0] data_cache_rdata  ,
    input   [1 :0] data_cache_rresp  ,
    input          data_cache_rlast  ,
    input          data_cache_rvalid ,
    output         data_cache_rready ,

    output  [3 :0] data_cache_awid   ,
    output  [31:0] data_cache_awaddr ,
    output  [3 :0] data_cache_awlen  ,
    output  [2 :0] data_cache_awsize ,
    output  [1 :0] data_cache_awburst,
    output  [1 :0] data_cache_awlock ,
    output  [3 :0] data_cache_awcache,
    output  [2 :0] data_cache_awprot ,
    output  [3 :0] data_cache_awqos  ,
    output         data_cache_awvalid,
    input          data_cache_awready,

    output  [3 :0] data_cache_wid    ,
    output  [31:0] data_cache_wdata  ,
    output  [3 :0] data_cache_wstrb  ,
    output         data_cache_wlast  ,
    output         data_cache_wvalid ,
    input          data_cache_wready ,

    input   [3 :0] data_cache_bid    ,
    input   [1 :0] data_cache_bresp  ,
    input          data_cache_bvalid ,
    output         data_cache_bready ,

    //-----------Data Uncache
    output  [3 :0] data_uncache_arid   ,
    output  [31:0] data_uncache_araddr ,
    output  [3 :0] data_uncache_arlen  ,
    output  [2 :0] data_uncache_arsize ,
    output  [1 :0] data_uncache_arburst,
    output  [1 :0] data_uncache_arlock ,
    output  [3 :0] data_uncache_arcache,
    output  [2 :0] data_uncache_arprot ,
    output  [3 :0] data_uncache_arqos  ,
    output         data_uncache_arvalid,
    input          data_uncache_arready,

    input   [3 :0] data_uncache_rid    ,
    input   [31:0] data_uncache_rdata  ,
    input   [1 :0] data_uncache_rresp  ,
    input          data_uncache_rlast  ,
    input          data_uncache_rvalid ,
    output         data_uncache_rready ,

    output  [3 :0] data_uncache_awid   ,
    output  [31:0] data_uncache_awaddr ,
    output  [3 :0] data_uncache_awlen  ,
    output  [2 :0] data_uncache_awsize ,
    output  [1 :0] data_uncache_awburst,
    output  [1 :0] data_uncache_awlock ,
    output  [3 :0] data_uncache_awcache,
    output  [2 :0] data_uncache_awprot ,
    output  [3 :0] data_uncache_awqos ,
    output         data_uncache_awvalid,
    input          data_uncache_awready,

    output  [3 :0] data_uncache_wid    ,
    output  [31:0] data_uncache_wdata  ,
    output  [3 :0] data_uncache_wstrb  ,
    output         data_uncache_wlast  ,
    output         data_uncache_wvalid ,
    input          data_uncache_wready ,

    input   [3 :0] data_uncache_bid    ,
    input   [1 :0] data_uncache_bresp  ,
    input          data_uncache_bvalid ,
    output         data_uncache_bready ,


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

    //---------------------Cache Enable----------------------
    wire use_inst_cache;//1->inst_cache
    wire use_data_cache;//1->data_cache

    //-------------------Pipeline Singal-----------------------
    wire        inst_stall;
    wire        data_stall;

    //-------Inst and Data FIFO
    //------Inst
    reg [7:0] fifo_inst;
    reg [2:0] inst_ptr_wr;
    reg [2:0] inst_ptr_rd; 
    //------Data
    reg [7:0] fifo_data;
    reg [2:0] data_ptr_wr;
    reg [2:0] data_ptr_rd;
    //-----------------Axi Singal-----------------------------
    //------------Inst Cache-----------
    assign inst_cache_awid    = 'b0;
    assign inst_cache_awaddr  = 'b0;
    assign inst_cache_awlen   = 'b0;
    assign inst_cache_awsize  = 'b0;
    assign inst_cache_awburst = 'b0;
    assign inst_cache_awlock  = 'b0;
    assign inst_cache_awcache = 'b0;
    assign inst_cache_awprot  = 'b0;
    assign inst_cache_awqos   = 'b0;
    assign inst_cache_awvalid = 'b0;

    assign inst_cache_wid     = 'b0;
    assign inst_cache_wdata   = 'b0;
    assign inst_cache_wstrb   = 'b0;
    assign inst_cache_wlast   = 'b0;
    assign inst_cache_wvalid  = 'b0;

    assign inst_cache_bready  = 'b0;

    //-----------Inst Uncache
    assign inst_uncache_awid    = 'b0;
    assign inst_uncache_awaddr  = 'b0;
    assign inst_uncache_awlen   = 'b0;
    assign inst_uncache_awsize  = 'b0;
    assign inst_uncache_awburst = 'b0;
    assign inst_uncache_awlock  = 'b0;
    assign inst_uncache_awcache = 'b0;
    assign inst_uncache_awprot  = 'b0;
    assign inst_uncache_awqos   = 'b0;
    assign inst_uncache_awvalid = 'b0;

    assign inst_uncache_wid     = 'b0;
    assign inst_uncache_wdata   = 'b0;
    assign inst_uncache_wstrb   = 'b0;
    assign inst_uncache_wlast   = 'b0;
    assign inst_uncache_wvalid  = 'b0;

    assign inst_uncache_bready = 'b0;

    //------------------------Module Singal---------------------
    //----------Cpu
    wire        inst_cache;
    wire        data_cache;
    //Cache
    wire               cache_req;
    wire  [4 :0]       cache_op;
    wire  [31:0]       cache_addr = data_addr;
    wire  [31:0]       cache_tag;
    wire               cache_op_ok;
    wire               inst_cache_op_ok;
    wire               data_cache_op_ok;
    
    wire inst_cache_req =  cache_req && cache_op[1:0] == 2'b00;
    wire data_cache_req =  cache_req && cache_op[1:0] == 2'b01;
    assign cache_op_ok = inst_cache_op_ok || data_cache_op_ok || (cache_req && cache_op[1]);
 

    //-----Cpu Inst Singal
    wire        cpu_inst_req;
    wire [31:0] cpu_inst_addr;
    wire [63:0] cpu_inst_rdata;
    wire        cpu_inst_addr_ok;
    wire        cpu_inst_data_ok;
    //-----Cpu Data Singal
    wire        cpu_data_req;
    wire        cpu_data_wr;
    wire [3:0]  cpu_data_wstrb;
    wire [31:0] cpu_data_addr;
    wire [2 :0] cpu_data_size;
    wire [31:0] cpu_data_wdata;
    wire [31:0] cpu_data_rdata;
    wire        cpu_data_addr_ok;
    wire        cpu_data_data_ok;
    //----------Inst Cache
    wire        inst_req;
    wire [31:0] inst_addr;
    wire [63:0] inst_rdata;
    wire        inst_addr_ok;
    wire        inst_data_ok;
    //----------Inst Uncache
    wire        un_inst_req;
    wire [31:0] un_inst_addr;
    wire [63:0] un_inst_rdata;
    wire        un_inst_addr_ok;
    wire        un_inst_data_ok;
    //----------Data Cache
    wire        data_req;
    wire        data_wr;
    wire [31:0] data_addr;
    wire [31:0] data_wdata;
    wire [3 :0] data_wstrb;
    wire [31:0] data_rdata;
    wire        data_addr_ok;
    wire        data_data_ok;
    //----------Data Uncache
    wire        un_data_req;
    wire        un_data_wr;
    wire [2 :0] un_data_size;
    wire [31:0] un_data_addr;
    wire [31:0] un_data_wdata;
    wire [3 :0] un_data_wstrb;
    wire [31:0] un_data_rdata;
    wire        un_data_addr_ok;
    wire        un_data_data_ok;
    //-------------Pipeline FIFO-----------------
    //------Enable
    assign use_inst_cache = inst_cache;
    assign use_data_cache = data_cache;
    //-----Stall
    assign inst_stall = (!(fifo_inst[inst_ptr_rd] ^ use_inst_cache))?1'b1:(!(inst_ptr_wr ^ inst_ptr_rd));
    assign data_stall = (!(fifo_data[data_ptr_rd] ^ use_data_cache))?1'b1:(!(data_ptr_wr ^ data_ptr_rd));
    //-----Rdata Addr Data
    assign cpu_inst_rdata   = fifo_inst[inst_ptr_rd]?inst_rdata:un_inst_rdata;
    assign cpu_inst_data_ok = inst_data_ok | un_inst_data_ok;
    assign cpu_inst_addr_ok = (use_inst_cache)?inst_addr_ok:un_inst_addr_ok;

    assign cpu_data_rdata   = fifo_data[data_ptr_rd]?data_rdata:un_data_rdata;
    assign cpu_data_data_ok = data_data_ok | un_data_data_ok;
    assign cpu_data_addr_ok = (use_data_cache)?data_addr_ok:un_data_addr_ok;

    //-----Inst
    always @(posedge aclk) begin
        if (!aresetn) begin
            inst_ptr_wr <= 3'b0;
            //fifo_inst <= 8'b0;
        end        
        else if (cpu_inst_addr_ok & cpu_inst_req & inst_stall) begin
            inst_ptr_wr <= inst_ptr_wr + 3'b1;
            //fifo_inst[inst_ptr_wr] <= use_inst_cache;
        end
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            fifo_inst <= 8'b0;
        end        
        else if (cpu_inst_addr_ok & cpu_inst_req & inst_stall) begin
            fifo_inst[inst_ptr_wr] <= use_inst_cache;
        end
    end


    always @(posedge aclk) begin
        if (!aresetn) begin
            inst_ptr_rd <= 3'b0;
        end
        else if (cpu_inst_data_ok) begin
            inst_ptr_rd <= inst_ptr_rd + 3'b1;
        end
    end

    //-----Data
    always @(posedge aclk) begin
        if (!aresetn) begin
            data_ptr_wr <= 3'b0;
            //fifo_data <= 8'b0;
        end
        else if (cpu_data_addr_ok & cpu_data_req & data_stall) begin
            data_ptr_wr <= data_ptr_wr + 3'b1;
            //fifo_data[data_ptr_wr] <= use_data_cache;
        end
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            fifo_data <= 8'b0;
        end
        else if (cpu_data_addr_ok & cpu_data_req & data_stall) begin
            fifo_data[data_ptr_wr] <= use_data_cache;
        end
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            data_ptr_rd <= 3'b0;
        end
        else if (cpu_data_data_ok) begin
            data_ptr_rd <= data_ptr_rd + 3'b1;
        end
    end
    //------------------------Module Singal Assignment----------------------
    //----------Inst Cache
    assign inst_req   = cpu_inst_req & use_inst_cache & inst_stall;
    assign inst_addr  = cpu_inst_addr;
    //----------Inst uncache
    assign un_inst_req = cpu_inst_req & !use_inst_cache & inst_stall;
    assign un_inst_addr= cpu_inst_addr;
    //----------Data Cache
    assign data_req   = cpu_data_req & use_data_cache & data_stall;
    assign data_wr    = cpu_data_wr;
    assign data_addr  = cpu_data_addr;
    assign data_wdata = cpu_data_wdata;
    assign data_wstrb = cpu_data_wstrb;
    //----------Data uncache
    assign un_data_req   = cpu_data_req & !use_data_cache & data_stall;
    assign un_data_size  = cpu_data_size;
    assign un_data_wr    = cpu_data_wr;
    assign un_data_addr  = cpu_data_addr;
    assign un_data_wdata = cpu_data_wdata;
    assign un_data_wstrb = cpu_data_wstrb;

    //-------------------------Module----------------------------------------
    //-------------CPU Core
    cpu_core u_dual_issue_core (
        .ext_int     (ext_int),
        .clk         (aclk),
        .resetn      (aresetn),

        .inst_req    (cpu_inst_req  ),
        .inst_addr   (cpu_inst_addr ),
        .inst1_rdata (cpu_inst_rdata[31:0]),
        .inst2_rdata (cpu_inst_rdata[63:32]),
        .inst_addr_ok(cpu_inst_addr_ok),
        .inst_data_ok(cpu_inst_data_ok),

        .data_req    (cpu_data_req  ),
        .data_wr     (cpu_data_wr   ),
        .data_wstrb  (cpu_data_wstrb),
        .data_addr   (cpu_data_addr ),
        .data_size   (cpu_data_size),
        .data_wdata  (cpu_data_wdata),
        .data_rdata  (cpu_data_rdata),
        .data_addr_ok(cpu_data_addr_ok & data_stall),
        .data_data_ok(cpu_data_data_ok),

        .cache_req  (cache_req),
        .cache_op   (cache_op),
        .cache_over (cache_op_ok),

        .debug_wb_pc_1(debug_wb_pc_1),
        .debug_wb_rf_wen_1(debug_wb_rf_wen_1),
        .debug_wb_rf_wnum_1(debug_wb_rf_wnum_1),
        .debug_wb_rf_wdata_1(debug_wb_rf_wdata_1),
        .debug_wb_pc_2(debug_wb_pc_2),
        .debug_wb_rf_wen_2(debug_wb_rf_wen_2),
        .debug_wb_rf_wnum_2(debug_wb_rf_wnum_2),
        .debug_wb_rf_wdata_2(debug_wb_rf_wdata_2),

        .inst_cache(inst_cache),
        .data_cache(data_cache)
    );
    //-------------Inst Cache
    icache u_icache (
        .clk (aclk),
        .rstn(aresetn),

        .cache_req  (inst_cache_req  ),
        .cache_op   (cache_op   ),
        .cache_addr (cache_addr ),
        .cache_ok   (inst_cache_op_ok),

        .inst_req     (inst_req    ),
        .inst_addr    (inst_addr   ),
        .inst_rdata   (inst_rdata  ),
        .inst_addr_ok (inst_addr_ok),
        .inst_data_ok (inst_data_ok),

        .arid         (inst_cache_arid   ),
        .araddr       (inst_cache_araddr ),
        .arlen        (inst_cache_arlen  ),
        .arsize       (inst_cache_arsize ),
        .arburst      (inst_cache_arburst),
        .arlock       (inst_cache_arlock ),
        .arcache      (inst_cache_arcache),
        .arprot       (inst_cache_arprot ),
        .arqos        (inst_cache_arqos  ),
        .arvalid      (inst_cache_arvalid),
        .arready      (inst_cache_arready),

        .rid          (inst_cache_rid   ),
        .rdata        (inst_cache_rdata ),
        .rresp        (inst_cache_rresp ),
        .rlast        (inst_cache_rlast ),
        .rvalid       (inst_cache_rvalid),
        .rready       (inst_cache_rready)
    );
    //-------------Inst Cache
    inst_uncache u_inst_uncache(
    	.clk          (aclk                 ),
        .rstn         (aresetn              ),

        .inst_req     (un_inst_req          ),
        .inst_addr    (un_inst_addr         ),
        .inst_rdata   (un_inst_rdata        ),
        .inst_addr_ok (un_inst_addr_ok      ),
        .inst_data_ok (un_inst_data_ok      ),

        .arid         (inst_uncache_arid    ),
        .araddr       (inst_uncache_araddr  ),
        .arlen        (inst_uncache_arlen   ),
        .arsize       (inst_uncache_arsize  ),
        .arburst      (inst_uncache_arburst ),
        .arlock       (inst_uncache_arlock  ),
        .arcache      (inst_uncache_arcache ),
        .arprot       (inst_uncache_arprot  ),
        .arqos        (inst_uncache_arqos   ),
        .arvalid      (inst_uncache_arvalid ),
        .arready      (inst_uncache_arready ),

        .rid          (inst_uncache_rid     ),
        .rdata        (inst_uncache_rdata   ),
        .rresp        (inst_uncache_rresp   ),
        .rlast        (inst_uncache_rlast   ),
        .rvalid       (inst_uncache_rvalid  ),
        .rready       (inst_uncache_rready  )
    );
    
    //-------------Data Cache
    dcache u_dcache (
        .clk        (aclk            ),
        .rstn       (aresetn         ),

        .cache_req  (data_cache_req       ),
        .cache_op   (cache_op        ),
        .cache_addr (cache_addr      ),
        .cache_tag  ('b0             ),
        .cache_valid('b0             ),
        .cache_dirty('b0             ),
        .cache_ok   (data_cache_op_ok),

        .data_req     (data_req    ),
        .data_wr      (data_wr     ),
        .data_addr    (data_addr   ),
        .data_wdata   (data_wdata  ),
        .data_wstrb   (data_wstrb  ),
        .data_rdata   (data_rdata  ),
        .data_addr_ok (data_addr_ok),
        .data_data_ok (data_data_ok),

        .arid         (data_cache_arid   ),
        .araddr       (data_cache_araddr ),
        .arlen        (data_cache_arlen  ),
        .arsize       (data_cache_arsize ),
        .arburst      (data_cache_arburst),
        .arlock       (data_cache_arlock ),
        .arcache      (data_cache_arcache),
        .arprot       (data_cache_arprot ),
        .arqos        (data_cache_arqos  ),
        .arvalid      (data_cache_arvalid),
        .arready      (data_cache_arready),

        .rid          (data_cache_rid   ),
        .rdata        (data_cache_rdata ),
        .rresp        (data_cache_rresp ),
        .rlast        (data_cache_rlast ),
        .rvalid       (data_cache_rvalid),
        .rready       (data_cache_rready),

        .awid         (data_cache_awid   ),
        .awaddr       (data_cache_awaddr ),
        .awlen        (data_cache_awlen  ),
        .awsize       (data_cache_awsize ),
        .awburst      (data_cache_awburst),
        .awlock       (data_cache_awlock ),
        .awcache      (data_cache_awcache),
        .awprot       (data_cache_awprot ),
        .awqos        (data_cache_awqos  ),
        .awvalid      (data_cache_awvalid),
        .awready      (data_cache_awready),

        .wid          (data_cache_wid   ),
        .wdata        (data_cache_wdata ),
        .wstrb        (data_cache_wstrb ),
        .wlast        (data_cache_wlast ),
        .wvalid       (data_cache_wvalid),
        .wready       (data_cache_wready),

        .bid          (data_cache_bid   ),
        .bresp        (data_cache_bresp ),
        .bvalid       (data_cache_bvalid),
        .bready       (data_cache_bready)
    );

    //-----Data Uncache
    data_uncache u_data_uncache (
        .clk (aclk),
        .rstn(aresetn),

        .data_req     (un_data_req    ),
        .data_wr      (un_data_wr     ),
        .data_size    (un_data_size   ),
        .data_addr    (un_data_addr   ),
        .data_wdata   (un_data_wdata  ),
        .data_wstrb   (un_data_wstrb  ),
        .data_rdata   (un_data_rdata  ),
        .data_addr_ok (un_data_addr_ok),
        .data_data_ok (un_data_data_ok),

        //axi
        .arid         (data_uncache_arid   ),
        .araddr       (data_uncache_araddr ),
        .arlen        (data_uncache_arlen  ),
        .arsize       (data_uncache_arsize ),
        .arburst      (data_uncache_arburst),
        .arlock       (data_uncache_arlock ),
        .arcache      (data_uncache_arcache),
        .arprot       (data_uncache_arprot ),
        .arqos        (data_uncache_arqos  ),
        .arvalid      (data_uncache_arvalid),
        .arready      (data_uncache_arready),

        .rid          (data_uncache_rid   ),
        .rdata        (data_uncache_rdata ),
        .rresp        (data_uncache_rresp ),
        .rlast        (data_uncache_rlast ),
        .rvalid       (data_uncache_rvalid),
        .rready       (data_uncache_rready),

        .awid         (data_uncache_awid   ),
        .awaddr       (data_uncache_awaddr ),
        .awlen        (data_uncache_awlen  ),
        .awsize       (data_uncache_awsize ),
        .awburst      (data_uncache_awburst),
        .awlock       (data_uncache_awlock ),
        .awcache      (data_uncache_awcache),
        .awprot       (data_uncache_awprot ),
        .awqos        (data_uncache_awqos  ),
        .awvalid      (data_uncache_awvalid),
        .awready      (data_uncache_awready),

        .wid          (data_uncache_wid   ),
        .wdata        (data_uncache_wdata ),
        .wstrb        (data_uncache_wstrb ),
        .wlast        (data_uncache_wlast ),
        .wvalid       (data_uncache_wvalid),
        .wready       (data_uncache_wready),

        .bid          (data_uncache_bid   ),
        .bresp        (data_uncache_bresp ),
        .bvalid       (data_uncache_bvalid),
        .bready       (data_uncache_bready)
    );
endmodule
