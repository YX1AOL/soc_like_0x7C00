`include "../../Head_Files/cpu.vh"

module reg_cp0 (
    input clk,
    input rst,
    input [5:0]int_i,

    //write port
    input [40:0]ex_cp0_bus_primary_i,

    //read port
    input [7:0]cp0_raddr_primary_i,
    input [7:0]cp0_raddr_secondary_i,
    output [31:0]cp0_rdata_primary_o,
    output [31:0]cp0_rdata_secondary_o,

    //TLB
    input tlb_write_random_i,
    input tlb_read_i,
    input tlb_probe_i,
    input  [159:0]tlb_cp0_bus_i,
    output [191:0]cp0_tlb_bus_o,

    //exception
    input [71:0]mem1_cp0_bus_i,

    //the register needed 
    output [31:0]cp0_cause_o,
    output [31:0]cp0_status_o,
    output [31:0]cp0_epc_o,
    output [31:0]cp0_ebase_o,
    output [31:0]cp0_taglo_o,
    output [31:0]cp0_hwrena_o,

    //some information needed
    output       cp0_config_uncache_o
    );

    //--------------------------------------------------------------
    //                      input bus decode        
    //--------------------------------------------------------------
    wire        cp0_write_primary = ex_cp0_bus_primary_i[0];
    wire [7:0]  cp0_waddr_primary = ex_cp0_bus_primary_i[8:1];
    wire [31:0] cp0_wdata_primary = ex_cp0_bus_primary_i[40:9];

    wire        exception_flag      = mem1_cp0_bus_i[0];
    wire [31:0] exception_inst_addr = mem1_cp0_bus_i[32:1];
    wire [4:0]  exception_code      = mem1_cp0_bus_i[37:33];
    wire [31:0] exception_badaddr   = mem1_cp0_bus_i[69:38];
    wire        in_delayslot        = mem1_cp0_bus_i[70];
    wire        exception_cpux      = mem1_cp0_bus_i[71];

    wire [31:0] tlb_index    = tlb_cp0_bus_i[31:0];
    wire [31:0] tlb_pagemask = tlb_cp0_bus_i[63:32];
    wire [31:0] tlb_entryhi  = tlb_cp0_bus_i[95:64];
    wire [31:0] tlb_entrylo0 = tlb_cp0_bus_i[127:96];
    wire [31:0] tlb_entrylo1 = tlb_cp0_bus_i[159:128];

    //--------------------------------------------------------------
    //                 generate exception occur flag
    //--------------------------------------------------------------
    wire exception_occur_ner = exception_flag && exception_code != `Er && exception_code != `Refetch;
    wire exception_occur_er  = exception_flag && exception_code == `Er ;
    wire exception_occur_tlb = exception_flag && (exception_code == `TLBL || exception_code == `TLBS || exception_code == `MOD);
    wire exception_occur_ad  = exception_flag && (exception_code == `AdES || exception_code == `AdEL);
    wire exception_occur_cpu = exception_flag && exception_code == `CpU ;
    
    //--------------------------------------------------------------
    //                          index*           
    //--------------------------------------------------------------
    //Probe Failure. Hardware writes this bit during execution ofthe TLBP instruction to indicate whether a TLB match occurred
    reg index_p;
    always @(posedge clk) begin
        if(rst == `RstEnable)   index_p <= 0;
        else if(tlb_probe_i)    index_p <= tlb_index[31];
    end

    //TLB index for writing or reading TLB entry
    reg[$clog2(`TLB_NUM)-1:0]index_index;//for example, `TLB_NUM is 16, so 3:0
    always @(posedge clk) begin
        if(tlb_probe_i)                                                     index_index <= tlb_index[$clog2(`TLB_NUM)-1:0];
        else if(cp0_write_primary && cp0_waddr_primary == `index_ADDR)      index_index <= cp0_wdata_primary[$clog2(`TLB_NUM)-1:0];
    end

    wire [31:0]index = {index_p,31'b0} | index_index;
    //--------------------------------------------------------------
    //                          wire*            
    //--------------------------------------------------------------
    reg [$clog2(`TLB_NUM)-1:0] wired_wired;
    always @(posedge clk) begin
        if (rst == `RstEnable)                                              wired_wired <= 0;
        else if(cp0_write_primary && cp0_waddr_primary == `wire_ADDR)       wired_wired <= cp0_wdata_primary[$clog2(`TLB_NUM)-1:0];
    end

    wire [31:0]wired = 32'b0 | wired_wired;
    //--------------------------------------------------------------
    //                          random*
    //--------------------------------------------------------------
    reg [$clog2(`TLB_NUM)-1:0] random_random;

    wire wired_wen = (cp0_write_primary && cp0_waddr_primary == `wire_ADDR);

    always @(posedge clk) begin
        if(rst == `RstEnable || wired_wen)  random_random <= `TLB_NUM - 1;
        else if(tlb_write_random_i)         random_random <= (random_random == wired_wired)? (`TLB_NUM - 1):(random_random - 1'b1);
    end

    wire [31:0] random = 32'b0 | random_random;
    //--------------------------------------------------------------
    //                         entrylo0*        
    //--------------------------------------------------------------
    wire [6:0]entrylo0_fill = 6'b0;//the bits decide the bits of physical addr, now is 32

    reg [25:0] entrylo0_tlb;
    always @(posedge clk) begin
        if(tlb_read_i)                                                          entrylo0_tlb <= tlb_entrylo0[25:0];
        else if(cp0_write_primary && cp0_waddr_primary == `entrylo0_ADDR)       entrylo0_tlb <= cp0_wdata_primary[25:0];
    end

    wire [31:0]entrylo0 =   { 
                                entrylo0_fill,  //31:26
                                entrylo0_tlb    //25:0  
                            };

    //--------------------------------------------------------------
    //                         entrylo1*        
    //--------------------------------------------------------------
    wire [8:0]entrylo1_fill = 6'b0;//the bits decide the bits of physical addr, now is 32

    reg [25:0] entrylo1_tlb;
    always @(posedge clk) begin
        if(tlb_read_i)                                                          entrylo1_tlb <= tlb_entrylo1[25:0];
        else if(cp0_write_primary && cp0_waddr_primary == `entrylo1_ADDR)       entrylo1_tlb <= cp0_wdata_primary[25:0];
    end

    wire [31:0]entrylo1 =   {   
                                entrylo1_fill,  //31:26
                                entrylo1_tlb    //25:0 
                            };

    //--------------------------------------------------------------
    //                         context*         
    //--------------------------------------------------------------
    //a pointer to an entry in the page table entry (PTE) array
    reg [8 :0] context_ptebase;
    always @(posedge clk) begin
        if(cp0_write_primary && cp0_waddr_primary == `context_ADDR)    context_ptebase <= cp0_wdata_primary[31:23];
    end

    //This field is written by hardware on a TLB exception. It contains bits VA31..13 of the virtual address that caused the exception.
    reg [18:0] context_badvpn2;
    always @(posedge clk) begin
        if(exception_occur_tlb)   context_badvpn2 <= exception_badaddr[31:13];
    end

    wire [31:0] context =   {
                                context_ptebase,    //31:23
                                context_badvpn2,    //22:4
                                4'b0                //3:0
                            };
    
    //--------------------------------------------------------------
    //                          entryhi*         
    //--------------------------------------------------------------
    reg [18:0] entryhi_vpn2;
    always @(posedge clk) begin
        if(exception_occur_tlb)                                                 entryhi_vpn2 <= exception_badaddr[31:13];
        else if(tlb_read_i)                                                     entryhi_vpn2 <= tlb_entryhi[31:13];
        else if(cp0_write_primary && cp0_waddr_primary == `entryhi_ADDR)        entryhi_vpn2 <= cp0_wdata_primary[31:13];
    end

    //TODO:mips manal: when tlb exception occurs, the ASID field contains the ASID of the reference that missed.
    reg [7:0] entryhi_asid;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                                entryhi_asid <= 8'b0;
        else if(tlb_read_i)                                                  entryhi_asid <= tlb_entryhi[7:0];
        else if(cp0_write_primary && cp0_waddr_primary == `entryhi_ADDR)     entryhi_asid <= cp0_wdata_primary[7:0];
    end

    wire [31:0]entryhi =    {  
                                entryhi_vpn2,   //31:13
                                5'b0,           //12:8
                                entryhi_asid    //7:0
                            };

    //--------------------------------------------------------------
    //                      pagemask*        
    //--------------------------------------------------------------

`ifdef GKD
    reg [11:0] pagemask_mask;
    always @(posedge clk) begin
        if(tlb_read_i)                                                        pagemask_mask <= tlb_pagemask[24:13];
        else if(cp0_write_primary && cp0_waddr_primary == `pagemask_ADDR)     pagemask_mask <= cp0_wdata_primary[24:13];
    end
    
    wire [31:0] pagemask = {    7'b0,           //31:29
                                pagemask_mask,  //28:13 16
                                13'b0           //12:0
                            };
`else
    /*reg [15:0] pagemask_mask;
    always @(posedge clk) begin
        if(tlb_read_i)                                                        pagemask_mask <= tlb_pagemask[28:13];
        else if(cp0_write_secondary && cp0_waddr_secondary == `pagemask_ADDR) pagemask_mask <= cp0_wdata_secondary[28:13];
        else if(cp0_write_primary && cp0_waddr_primary == `pagemask_ADDR)     pagemask_mask <= cp0_wdata_primary[28:13];
    end
    
    wire [31:0] pagemask = {    3'b0,           //31:29
                                pagemask_mask,  //28:13 16
                                13'b0           //12:0
                            };*/

    wire [31:0] pagemask = 0;
`endif


    //--------------------------------------------------------------
    //                      count*           
    //--------------------------------------------------------------
    reg half_clk;
    always @(posedge clk) begin
        if(rst == `RstEnable) half_clk <= 1'b0;
        else half_clk <= ~half_clk;
    end

    reg [31:0]count;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                               count <= 0;
        else if(cp0_write_primary && cp0_waddr_primary == `count_ADDR)      count <= cp0_wdata_primary;
        else if(half_clk == 1'b1)                                           count <= count + 1'b1;
    end

    //--------------------------------------------------------------
    //                      compare*         
    //--------------------------------------------------------------
    reg [31:0]compare;
    always @(posedge clk) begin
        if(cp0_write_primary && cp0_waddr_primary == `compare_ADDR)compare <= cp0_wdata_primary;
    end

    //--------------------------------------------------------------
    //                      badvaddr         
    //--------------------------------------------------------------
    reg [31:0]badvaddr;
    always @(posedge clk) begin
        if(exception_occur_ad)       badvaddr <= exception_badaddr;
        else if(exception_occur_tlb) badvaddr <= exception_badaddr;
    end

    //--------------------------------------------------------------
    //                      status*
    //--------------------------------------------------------------
    //Controls access to coprocessors 3, 2, 1, and 0
    wire [2:0]status_cu = 3'b000;
    reg status_cu0;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                               status_cu0 <= 1'b0;
        else if(cp0_write_primary && cp0_waddr_primary == `status_ADDR)     status_cu0 <= cp0_wdata_primary[28];
    end

    wire status_rp = 1'b0;
    wire status_fr = 1'b0;
    wire status_re = 1'b0;
    wire status_mx = 1'b0;

    //Controls the location of exception vectors
    reg status_bev;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                               status_bev <= 1'b1;
        else if(cp0_write_primary && cp0_waddr_primary == `status_ADDR)     status_bev <= cp0_wdata_primary[22];
    end

    wire status_ts = 1'b0;
    wire status_sr = 1'b0;
    wire status_nmi = 1'b0; //NMI need to be implemented, but soft reset or reset not implemented.
    wire status_ase = 1'b0;
    wire [1:0] status_impl = 2'b00;

    //Interrupt Mask: Controls the enabling of each of the hardware interrupts.
    reg [7:0] status_im;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                               status_im <= 8'b0;
        else if(cp0_write_primary && cp0_waddr_primary == `status_ADDR)     status_im <= cp0_wdata_primary[15:8];
    end

    //if Supervisor Mode is not implemented, this bit denotes the base operating mode of the processor.
    reg status_um;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                               status_um <= 1'b0;
        else if(cp0_write_primary && cp0_waddr_primary == `status_ADDR)     status_um <= cp0_wdata_primary[4];
    end

    wire status_r0 = 1'b0;
    wire status_erl = 1'b0;

    //Error Level;
    reg status_exl;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                               status_exl <= 1'b0;
        else if(exception_occur_er)                                         status_exl <= 1'b0;
        else if(exception_occur_ner)                                        status_exl <= 1'b1;
        else if(cp0_write_primary && cp0_waddr_primary == `status_ADDR)     status_exl <= cp0_wdata_primary[1];
    end

    //Interrupt Enable;
    reg status_ie;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                               status_ie <= 1'b0;
        else if(cp0_write_primary && cp0_waddr_primary == `status_ADDR)     status_ie <= cp0_wdata_primary[0];
    end


    wire [31:0]status = {
                            status_cu,  //31:29
                            status_cu0, //28
                            status_rp,  //27
                            status_fr,  //26
                            status_re,  //25
                            status_mx,  //24
                            1'b0,       //23
                            status_bev, //22
                            status_ts,  //21
                            status_sr,  //20
                            status_nmi, //19
                            status_ase, //18
                            status_impl,//17:16
                            status_im,  //15:8
                            3'b0,       //7:5
                            status_um,  //4
                            status_r0,  //3
                            status_erl, //2
                            status_exl, //1
                            status_ie   //0 
                        };
    //--------------------------------------------------------------
    //                          casue*            
    //--------------------------------------------------------------
    //Indicates whether the last exception taken occurred in a branch delay slot
    reg cause_bd;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                   cause_bd <= 1'b0;
        else if(status_exl == 1'b0 && exception_occur_ner)      cause_bd <= in_delayslot;
        else begin end
    end
    
    //TODO:not sure
    //if cp0_compare is writed, cause_ti should be set.
    wire compare_write = (cp0_write_primary && cp0_waddr_primary == `compare_ADDR);
    reg cause_ti; 
    always @(posedge clk) begin
        if(compare_write || rst == `RstEnable)      cause_ti <= 1'b0;
        else if(count == compare)                   cause_ti <= 1'b1;
    end

    //Coprocessor unit number referenced when a Coprocessor Unusable exception is taken.
    reg [1:0]cause_ce;
    always @(posedge clk) begin
        if(rst == `RstEnable)           cause_ce <= 2'b00;
        else if(exception_occur_cpu)    cause_ce <= {2{exception_cpux}} & 2'd1;
    end

    wire cause_dc = 1'b0;
    wire cause_pci = 1'b0;
    wire [1:0]cause_ase_1 = 2'b00;

    //Indicates whether an interrupt exception uses the general exception vector or a special interrupt vector
    reg cause_iv;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                                 cause_iv <= 1'b0;
        else if(cp0_write_primary && cp0_waddr_primary == `cause_ADDR)        cause_iv <= cp0_wdata_primary[23];    
    end

    wire cause_wp = 1'b0;
    wire cause_fdci = 1'b0;
    wire [1:0]cause_ase_2 = 2'b00;

    //Indicates an interrupt is pending
    reg [7:0]cause_ip;
    always @(posedge clk) begin
        if(rst == `RstEnable)   cause_ip[7:2] <= 6'b0;
        else                    cause_ip[7:2] <= {(int_i[5] | cause_ti),int_i[4:0]};
    end

    always @(posedge clk) begin
        if(rst == `RstEnable)                                               cause_ip[1:0] <= 2'b0;
        else if(cp0_write_primary && cp0_waddr_primary == `cause_ADDR)      cause_ip[1:0] <= cp0_wdata_primary[9:8];
    end
    
    //Exception code
    reg [4:0] cause_excode;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                   cause_excode <= 5'b0;
        else if(status_exl == 1'b0 && exception_occur_ner)      cause_excode <= exception_code;
    end

    wire [31:0]cause =  {   cause_bd,       //31
                            cause_ti,       //30
                            cause_ce,       //29:28
                            cause_dc,       //27
                            cause_pci,      //26
                            cause_ase_1,    //25:24
                            cause_iv,       //23
                            cause_wp,       //22
                            cause_fdci,     //21
                            3'b000,         //20:18
                            cause_ase_2,    //17:16
                            cause_ip,       //15:8
                            1'b0,           //7
                            cause_excode,   //6:2
                            2'b0            //1:0
                        };

    //--------------------------------------------------------------
    //                          EPC*            
    //--------------------------------------------------------------
    reg [31:0]epc;
    always @(posedge clk) begin
        if(status_exl == 1'b0 && exception_occur_ner)                       epc <= (in_delayslot)?   (exception_inst_addr - 32'h4):exception_inst_addr;
        else if(cp0_write_primary && cp0_waddr_primary == `epc_ADDR)        epc <= cp0_wdata_primary;
    end

    //--------------------------------------------------------------
    //                  Processor Identification           
    //--------------------------------------------------------------
`ifdef LOONGSON
    wire [31:0] prid = 32'h00004220;
`else
    wire [31:0] prid = {8'b0,8'b1,16'h8000};
`endif

    //--------------------------------------------------------------
    //                      config            
    //--------------------------------------------------------------
    //Denotes that the Config1 register is implemented at a select field value of 1.
    wire config_m    =   1'b1;

    wire [2:0]config_k23 = 3'b000;
    wire [2:0]config_ku = 3'b000;
    wire [8:0]config_impl = 9'b0;

    //Indicates the endian mode in which the processor is running. 0 is Little endian.
    wire config_be   =   1'b0;

    //Architecture Type implemented by the processor.
    wire [1:0]  config_at   =   2'b00;

    //MIPS32 Architecture revision level.
    wire [2:0]  config_ar   =   3'b000;

    //Indicates the MMU Type.
    wire [2:0]  config_mt   =   3'b001;

    //Virtual instruction cache (using both virtual indexing and virtual tags). //TODO:no sure
    wire config_vi = 1'b0;

    //Kseg0 cacheability and coherency attribute.//TODO:this is reset Cacheable
    reg [2:0]config_k0;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                                config_k0 <= 3'h3;
        else if(cp0_write_primary && cp0_waddr_primary == `config0_ADDR)     config_k0 <= cp0_wdata_primary[2:0];
    end
    
    
    wire [31:0] config0 =   {   
                                config_m,   //31
                                config_k23, //30:28
                                config_ku,  //27:25
                                config_impl,//24:16
                                config_be,  //15
                                config_at,  //14:13
                                config_ar,  //12:10
                                config_mt,  //9:7
                                3'b0,       //6:4
                                config_vi,  //3
                                config_k0   //2:0
                            };

    //--------------------------------------------------------------
    //                      config1
    //--------------------------------------------------------------

    wire [31:0] config1 = {
                            1'b1,
                            6'd31 ,  // TLB entries = 32
                            3'd1,   // Icache sets = 128
                            3'd4,   // Icache line size = 32
                            3'd3,   // Icache associativity = 4
                            3'd1,   // Dcache sets = 128
                            3'd4,   // Dcache line size = 32
                            3'd3,   // Dcache associativity = 4
                            1'b0,   // C2
                            1'b0,
                            1'b0,   // PC
                            1'b0,   // WR
                            1'b0,
                            1'b0,   // EP
                            1'b0    // FP
                       };
    
    //--------------------------------------------------------------
    //                      config2
    //--------------------------------------------------------------

    wire [31:0] config2 = {
                            1'b1,
                            31'b0
                       };

    //--------------------------------------------------------------
    //                      config1
    //--------------------------------------------------------------
    wire [31:0] config3 = {
                            1'b0,
                            17'b0,
                            1'b1,   //ULRI
                            13'b0
                       };
    //--------------------------------------------------------------
    //                          Ebase*            
    //--------------------------------------------------------------
    //the base address ofthe exception vectors used when StatusBEV equals 0
    reg [17:0] ebase_ExceptionBase;
    always @(posedge clk) begin
        if(rst == `RstEnable)                                               ebase_ExceptionBase <= 18'b0;
        else if(cp0_write_primary && cp0_waddr_primary == `ebase_ADDR)      ebase_ExceptionBase <= cp0_wdata_primary[29:12];
    end

    //used by software to distinguish different processors in a multi-processor system.
    //In a single processor system, this value should be set to zero.
    wire [9:0] ebase_CPUNum = 10'b0;

    wire [31:0] ebase = {   
                            2'b10,                  //31:30
                            ebase_ExceptionBase,    //29:12
                            2'b0,                   //11:10
                            ebase_CPUNum            //9:0
                        };
    

    //--------------------------------------------------------------
    //                          taglo             
    //--------------------------------------------------------------
    reg [31:0] taglo;
    always @(posedge clk) begin
        if(cp0_write_primary && cp0_waddr_primary == `taglo_ADDR) taglo <= cp0_wdata_primary;
    end

    //--------------------------------------------------------------
    //                          taghi             
    //--------------------------------------------------------------
    /*//TODO:cache inst
    reg [31:0] taghi;//XXX:cache inst
    always @(posedge clk) begin
        if(cp0_write_primary && cp0_waddr_primary == `taglo_ADDR)begin
            taghi <= cp0_wdata_primary;

    end*/

    //--------------------------------------------------------------
    //                    UserLocal Register             
    //--------------------------------------------------------------
    reg [31:0] userlocal;
    always @(posedge clk) begin
        if(cp0_write_primary && cp0_waddr_primary == `userlocal_ADDR) userlocal <= cp0_wdata_primary;
    end

    //--------------------------------------------------------------
    //                    HWREna Register             
    //--------------------------------------------------------------
    reg HWREna_CpuNum;
    reg HWREna_CC;
    reg HWREna_ULR;
    always @(posedge clk) begin
        if(cp0_write_primary && cp0_waddr_primary == `hwrena_ADDR) begin
            HWREna_CpuNum <= cp0_wdata_primary[0];
            HWREna_CC <= cp0_wdata_primary[2];
            HWREna_ULR <= cp0_wdata_primary[29];
        end
    end

    wire [31:0] hwrena = {
        2'b0,
        HWREna_ULR,
        26'b0,
        HWREna_CC,
        1'b0,
        HWREna_CpuNum
    };

    /*************************************************************************/
    assign cp0_ebase_o      = ebase;
    assign cp0_status_o     = status;
    assign cp0_cause_o      = cause;
    assign cp0_epc_o        = epc;
    assign cp0_taglo_o      = taglo;
    assign cp0_hwrena_o     = hwrena;

    assign cp0_rdata_primary_o =    {32{cp0_raddr_primary_i == `index_ADDR     }} & index     |
                                    {32{cp0_raddr_primary_i == `random_ADDR    }} & random    |
                                    {32{cp0_raddr_primary_i == `entrylo0_ADDR  }} & entrylo0  |
                                    {32{cp0_raddr_primary_i == `entrylo1_ADDR  }} & entrylo1  |
                                    {32{cp0_raddr_primary_i == `context_ADDR   }} & context   |
                                    {32{cp0_raddr_primary_i == `entryhi_ADDR   }} & entryhi   |
                                    {32{cp0_raddr_primary_i == `pagemask_ADDR  }} & pagemask  |
                                    {32{cp0_raddr_primary_i == `wire_ADDR      }} & wired     |
                                    {32{cp0_raddr_primary_i == `badvaddr_ADDR  }} & badvaddr  |
                                    {32{cp0_raddr_primary_i == `count_ADDR     }} & count     |
                                    {32{cp0_raddr_primary_i == `compare_ADDR   }} & compare   |
                                    {32{cp0_raddr_primary_i == `status_ADDR    }} & status    |
                                    {32{cp0_raddr_primary_i == `cause_ADDR     }} & cause     |
                                    {32{cp0_raddr_primary_i == `epc_ADDR       }} & epc       |
                                    {32{cp0_raddr_primary_i == `prid_ADDR      }} & prid      |
                                    {32{cp0_raddr_primary_i == `ebase_ADDR     }} & ebase     |
                                    {32{cp0_raddr_primary_i == `config0_ADDR   }} & config0   |
                                    {32{cp0_raddr_primary_i == `config1_ADDR   }} & config1   |
                                    {32{cp0_raddr_primary_i == `config2_ADDR   }} & config2   |
                                    {32{cp0_raddr_primary_i == `config3_ADDR   }} & config3   |
                                    {32{cp0_raddr_primary_i == `userlocal_ADDR }} & userlocal |
                                    {32{cp0_raddr_primary_i == `hwrena_ADDR    }} & hwrena    |
                                    {32{cp0_raddr_primary_i == `taglo_ADDR     }} & taglo     /*|
                                    {32{cp0_raddr_primary_i == `taghi_ADDR     }} & taghi     */;

       assign cp0_rdata_secondary_o =   {32{cp0_raddr_secondary_i == `index_ADDR     }} & index     |
                                        {32{cp0_raddr_secondary_i == `random_ADDR    }} & random    |
                                        {32{cp0_raddr_secondary_i == `entrylo0_ADDR  }} & entrylo0  |
                                        {32{cp0_raddr_secondary_i == `entrylo1_ADDR  }} & entrylo1  |
                                        {32{cp0_raddr_secondary_i == `context_ADDR   }} & context   |
                                        {32{cp0_raddr_secondary_i == `entryhi_ADDR   }} & entryhi   |
                                        {32{cp0_raddr_secondary_i == `pagemask_ADDR  }} & pagemask  |
                                        {32{cp0_raddr_secondary_i == `wire_ADDR      }} & wired     |
                                        {32{cp0_raddr_secondary_i == `badvaddr_ADDR  }} & badvaddr  |
                                        {32{cp0_raddr_secondary_i == `count_ADDR     }} & count     |
                                        {32{cp0_raddr_secondary_i == `compare_ADDR   }} & compare   |
                                        {32{cp0_raddr_secondary_i == `status_ADDR    }} & status    |
                                        {32{cp0_raddr_secondary_i == `cause_ADDR     }} & cause     |
                                        {32{cp0_raddr_secondary_i == `epc_ADDR       }} & epc       |
                                        {32{cp0_raddr_secondary_i == `prid_ADDR      }} & prid      |
                                        {32{cp0_raddr_secondary_i == `ebase_ADDR     }} & ebase     |
                                        {32{cp0_raddr_secondary_i == `config0_ADDR   }} & config0   |
                                        {32{cp0_raddr_secondary_i == `config1_ADDR   }} & config1   |
                                        {32{cp0_raddr_secondary_i == `config2_ADDR   }} & config2   |
                                        {32{cp0_raddr_secondary_i == `config3_ADDR   }} & config3   |
                                        {32{cp0_raddr_secondary_i == `userlocal_ADDR }} & userlocal |
                                        {32{cp0_raddr_secondary_i == `hwrena_ADDR    }} & hwrena    |
                                        {32{cp0_raddr_secondary_i == `taglo_ADDR     }} & taglo     /*|
                                        {32{cp0_raddr_secondary_i == `taghi_ADDR     }} & taghi    */ ;

    assign cp0_tlb_bus_o = {random,entrylo1,entrylo0,entryhi,pagemask,index};

    /*************************************************************************/
    // get the config uncache
    assign cp0_config_uncache_o = (config_k0 != 3'h3);
    
    endmodule