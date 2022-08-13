`include "../../Head_Files/cpu.vh"
    
module seg_id(
    input clk,
    input rst,

    //fllush signal
    input           branch_flag_i,
    input           exception_flag_i,

    //pipeline signal
    input           ex_allowin_i,
    input  [1:0]    issue_mode_i,
    input  [267:0]  issue_id_bus_primary_i,
    input  [171:0]  issue_id_bus_secondary_i,
    output          id_allowin_o,
    output          id_ex_valid_o,
    output [300:0]  id_ex_bus_primary_o,
    output [205:0]  id_ex_bus_secondary_o,

    //other segment stall signal
    input  [11:0]   ex_up_bus_i,
    input  [5:0]    mem1_up_bus_i,
    input  [5:0]    mem2_up_bus_i,

    //regile and bypass
    input  [303:0]  reg_bypass_i,
    input  [63:0]   reg_rdata_primary_i,
    input  [63:0]   reg_rdata_secondary_i,
    output [9:0]    rsrt_primary_o,
    output [9:0]    rsrt_secondary_o
    );
    //-------------------------------------------------------------
    //                      signal define         
    //-------------------------------------------------------------
    //----- FIFO signal -----
    wire id_allowin;
    wire id_ready_go;
    wire id_ex_valid;
    reg  id_valid;

    //---- id_ready_go control signal -----
    wire stall_relvance_primary;
    wire stall_relvance_secondary;

    //---- FIFO ram signal -----
    reg [31:0] inst_addr_primary;
    reg        reg_write_primary;
    reg [4:0]  reg_waddr_primary;
    reg [3:0]  alusel_primary;
    reg [7:0]  aluop_primary;
    reg        reg1_read_primary;
    reg [4:0]  reg1_read_addr_primary;
    reg        reg2_read_primary;
    reg [4:0]  reg2_read_addr_primary;
    reg [31:0] imm_primary;
    reg [31:0] link_addr_primary;
    reg [31:0] exception_type_primary;
    reg [31:0] mem_addr_primary;
    reg        cp0_write_primary;
    reg [7:0]  cp0_addr_primary;
    reg        hilo_write_primary;
    reg [31:0] branch_addr_primary_tmp;
    reg        predictor_flag_primary;
    reg [31:0] predictor_addr_primary;
    reg        predictor_pht_flag_primary;
    reg        predictor_bht_flag_primary;
    reg        allow_delay_exe_primary;
    
    reg        valid_secondary;
    reg [31:0] inst_addr_secondary;
    reg        reg_write_secondary;
    reg [4:0]  reg_waddr_secondary;
    reg [3:0]  alusel_secondary;
    reg [7:0]  aluop_secondary;
    reg        reg1_read_secondary;
    reg [4:0]  reg1_read_addr_secondary;
    reg        reg2_read_secondary;
    reg [4:0]  reg2_read_addr_secondary;
    reg [31:0] imm_secondary;
    reg [31:0] exception_type_secondary;
    reg        cp0_write_secondary;
    reg [7:0]  cp0_addr_secondary;
    reg        hilo_write_secondary;
    reg        predictor_flag_secondary;
    reg [31:0] predictor_addr_secondary;
    reg        predictor_pht_flag_secondary;
    reg        predictor_bht_flag_secondary;
    reg        allow_delay_exe_secondary;
    //-------------------------------------------------------------
    //                        FIFO          
    //-------------------------------------------------------------
    wire fllush_all       =  exception_flag_i || branch_flag_i && !delayslot;
    wire fllush_secondary =  branch_flag_i && delayslot;
    
    //TODO:(valid_secondary && !stall_relvance_secondary)
    assign id_ready_go  = !stall_relvance_primary && !stall_relvance_secondary && !branch_flag_i;
    assign id_allowin   = !id_valid || id_ready_go && ex_allowin_i;
    assign id_ex_valid  = id_valid && id_ready_go;
    always @(posedge clk) begin
        if(rst == `RstEnable || fllush_all) begin
            id_valid <= 1'b0;
        end else if(id_allowin) begin
            id_valid <= (issue_mode_i != `NoIssue);
        end

        if(rst == `RstEnable || fllush_all || fllush_secondary) begin
            valid_secondary <= 0;
        end else if(id_allowin) begin
            valid_secondary <= (issue_mode_i == `DoubleIssue);
        end

        if(id_allowin && (issue_mode_i != `NoIssue)) begin
            inst_addr_primary           <=  issue_id_bus_primary_i[31:0];
            reg_write_primary           <=  issue_id_bus_primary_i[32];
            reg_waddr_primary           <=  issue_id_bus_primary_i[37:33];
            alusel_primary              <=  issue_id_bus_primary_i[41:38];
            aluop_primary               <=  issue_id_bus_primary_i[49:42];
            reg1_read_primary           <=  issue_id_bus_primary_i[50];
            reg1_read_addr_primary      <=  issue_id_bus_primary_i[55:51];
            reg2_read_primary           <=  issue_id_bus_primary_i[56];
            reg2_read_addr_primary      <=  issue_id_bus_primary_i[61:57];
            imm_primary                 <=  issue_id_bus_primary_i[93:62];
            link_addr_primary           <=  issue_id_bus_primary_i[125:94];
            exception_type_primary      <=  issue_id_bus_primary_i[157:126];
            mem_addr_primary            <=  issue_id_bus_primary_i[189:158];
            cp0_write_primary           <=  issue_id_bus_primary_i[190];
            cp0_addr_primary            <=  issue_id_bus_primary_i[198:191];
            hilo_write_primary          <=  issue_id_bus_primary_i[199];
            branch_addr_primary_tmp     <=  issue_id_bus_primary_i[231:200];
            predictor_flag_primary      <=  issue_id_bus_primary_i[232];
            predictor_addr_primary      <=  issue_id_bus_primary_i[264:233];
            predictor_pht_flag_primary  <=  issue_id_bus_primary_i[265];
            predictor_bht_flag_primary  <=  issue_id_bus_primary_i[266];
            allow_delay_exe_primary     <=  issue_id_bus_primary_i[267];
        end

        if(id_allowin && (issue_mode_i != `NoIssue)) begin
            inst_addr_secondary         <= {32{issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[31:0];
            reg_write_secondary         <= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[32];
            reg_waddr_secondary         <= {5 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[37:33];
            alusel_secondary            <= {4 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[41:38];
            aluop_secondary             <= {8 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[49:42];
            reg1_read_secondary         <= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[50];
            reg1_read_addr_secondary    <= {5 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[55:51];
            reg2_read_secondary         <= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[56];
            reg2_read_addr_secondary    <= {5 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[61:57];
            imm_secondary               <= {32{issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[93:62];
            exception_type_secondary    <= {32{issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[125:94];
            cp0_write_secondary         <= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[126];
            cp0_addr_secondary          <= {8 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[134:127];
            hilo_write_secondary        <= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[135];
            predictor_flag_secondary    <= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[136];
            predictor_addr_secondary    <= {32{issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[168:137];
            predictor_pht_flag_secondary<= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[169];
            predictor_bht_flag_secondary<= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[170];
            allow_delay_exe_secondary    <= {1 {issue_mode_i == `DoubleIssue}} & issue_id_bus_secondary_i[171];
        end
    end

    //-------------------------------------------------------------
    //                  delayslot handle
    //-------------------------------------------------------------
    reg delayslot;
    always @(posedge clk) begin
        if(rst == `RstEnable || exception_flag_i)begin
            delayslot <= 1'b0;
        end else if(id_ex_valid && ex_allowin_i)begin
            delayslot <=  !valid_secondary && ((alusel_primary == `BRANCH) || (alusel_primary == `LIKELY));
        end
    end

    wire in_delayslot_primary   = delayslot;
    wire in_delayslot_secondary = (alusel_primary == `BRANCH) || (alusel_primary == `LIKELY);

    //-------------------------------------------------------------
    //            select opdata from bypass and regfile
    //-------------------------------------------------------------
    //----- bypass bus decode -----
    wire        ex_reg1_w       = reg_bypass_i[0];
    wire [4:0]  ex_reg1_waddr   = reg_bypass_i[5:1];
    wire [31:0] ex_reg1_wdata   = reg_bypass_i[37:6];
    wire        ex_reg2_w       = reg_bypass_i[38];
    wire [4:0]  ex_reg2_waddr   = reg_bypass_i[43:39];
    wire [31:0] ex_reg2_wdata   = reg_bypass_i[75:44];
    wire        mem1_reg1_w     = reg_bypass_i[76];
    wire [4:0]  mem1_reg1_waddr = reg_bypass_i[81:77];
    wire [31:0] mem1_reg1_wdata = reg_bypass_i[113:82];
    wire        mem1_reg2_w     = reg_bypass_i[114];
    wire [4:0]  mem1_reg2_waddr = reg_bypass_i[119:115];
    wire [31:0] mem1_reg2_wdata = reg_bypass_i[151:120];
    wire        mem2_reg1_w     = reg_bypass_i[152];
    wire [4:0]  mem2_reg1_waddr = reg_bypass_i[157:153];
    wire [31:0] mem2_reg1_wdata = reg_bypass_i[189:158];
    wire        mem2_reg2_w     = reg_bypass_i[190];
    wire [4:0]  mem2_reg2_waddr = reg_bypass_i[195:191];
    wire [31:0] mem2_reg2_wdata = reg_bypass_i[227:196];
    wire        wb_reg1_w       = reg_bypass_i[228];
    wire [4:0]  wb_reg1_waddr   = reg_bypass_i[233:229];
    wire [31:0] wb_reg1_wdata   = reg_bypass_i[265:234];
    wire        wb_reg2_w       = reg_bypass_i[266];
    wire [4:0]  wb_reg2_waddr   = reg_bypass_i[271:267];
    wire [31:0] wb_reg2_wdata   = reg_bypass_i[303:272];

    //-------------select opdata and bupass---------------------------
    wire [31:0] opdata1_primary  =      (!reg1_read_primary                                       )?  imm_primary:
                                        (ex_reg2_w   &&  reg1_read_addr_primary == ex_reg2_waddr  )?  ex_reg2_wdata:
                                        (ex_reg1_w   &&  reg1_read_addr_primary == ex_reg1_waddr  )?  ex_reg1_wdata:
                                        (mem1_reg2_w &&  reg1_read_addr_primary == mem1_reg2_waddr)?  mem1_reg2_wdata:
                                        (mem1_reg1_w &&  reg1_read_addr_primary == mem1_reg1_waddr)?  mem1_reg1_wdata:
                                        (mem2_reg2_w &&  reg1_read_addr_primary == mem2_reg2_waddr)?  mem2_reg2_wdata:
                                        (mem2_reg1_w &&  reg1_read_addr_primary == mem2_reg1_waddr)?  mem2_reg1_wdata:
                                        (wb_reg2_w   &&  reg1_read_addr_primary == wb_reg2_waddr  )?  wb_reg2_wdata:
                                        (wb_reg1_w   &&  reg1_read_addr_primary == wb_reg1_waddr  )?  wb_reg1_wdata:reg_rdata_primary_i[63:32];
    
    wire [31:0] opdata2_primary  =      (!reg2_read_primary                                         )?  imm_primary:
                                        (ex_reg2_w   &&  reg2_read_addr_primary == ex_reg2_waddr    )?  ex_reg2_wdata:
                                        (ex_reg1_w   &&  reg2_read_addr_primary == ex_reg1_waddr    )?  ex_reg1_wdata:
                                        (mem1_reg2_w &&  reg2_read_addr_primary == mem1_reg2_waddr  )?  mem1_reg2_wdata:
                                        (mem1_reg1_w &&  reg2_read_addr_primary == mem1_reg1_waddr  )?  mem1_reg1_wdata:
                                        (mem2_reg2_w &&  reg2_read_addr_primary == mem2_reg2_waddr  )?  mem2_reg2_wdata:
                                        (mem2_reg1_w &&  reg2_read_addr_primary == mem2_reg1_waddr  )?  mem2_reg1_wdata:
                                        (wb_reg2_w   &&  reg2_read_addr_primary == wb_reg2_waddr    )?  wb_reg2_wdata:
                                        (wb_reg1_w   &&  reg2_read_addr_primary == wb_reg1_waddr    )?  wb_reg1_wdata:reg_rdata_primary_i[31:0];

    wire [31:0] opdata1_secondary   =   (!reg1_read_secondary                                       )?  imm_secondary:
                                        (ex_reg2_w   &&  reg1_read_addr_secondary == ex_reg2_waddr  )?  ex_reg2_wdata:
                                        (ex_reg1_w   &&  reg1_read_addr_secondary == ex_reg1_waddr  )?  ex_reg1_wdata:
                                        (mem1_reg2_w &&  reg1_read_addr_secondary == mem1_reg2_waddr)?  mem1_reg2_wdata:
                                        (mem1_reg1_w &&  reg1_read_addr_secondary == mem1_reg1_waddr)?  mem1_reg1_wdata:
                                        (mem2_reg2_w &&  reg1_read_addr_secondary == mem2_reg2_waddr)?  mem2_reg2_wdata:
                                        (mem2_reg1_w &&  reg1_read_addr_secondary == mem2_reg1_waddr)?  mem2_reg1_wdata:
                                        (wb_reg2_w   &&  reg1_read_addr_secondary == wb_reg2_waddr  )?  wb_reg2_wdata:
                                        (wb_reg1_w   &&  reg1_read_addr_secondary == wb_reg1_waddr  )?  wb_reg1_wdata:reg_rdata_secondary_i[63:32];
    
    wire [31:0] opdata2_secondary   =    (!reg2_read_secondary                                      )?  imm_secondary:
                                        (ex_reg2_w   &&  reg2_read_addr_secondary == ex_reg2_waddr  )?  ex_reg2_wdata:
                                        (ex_reg1_w   &&  reg2_read_addr_secondary == ex_reg1_waddr  )?  ex_reg1_wdata:
                                        (mem1_reg2_w &&  reg2_read_addr_secondary == mem1_reg2_waddr)?  mem1_reg2_wdata:
                                        (mem1_reg1_w &&  reg2_read_addr_secondary == mem1_reg1_waddr)?  mem1_reg1_wdata:
                                        (mem2_reg2_w &&  reg2_read_addr_secondary == mem2_reg2_waddr)?  mem2_reg2_wdata:
                                        (mem2_reg1_w &&  reg2_read_addr_secondary == mem2_reg1_waddr)?  mem2_reg1_wdata:
                                        (wb_reg2_w   &&  reg2_read_addr_secondary == wb_reg2_waddr  )?  wb_reg2_wdata:
                                        (wb_reg1_w   &&  reg2_read_addr_secondary == wb_reg1_waddr  )?  wb_reg1_wdata:reg_rdata_secondary_i[31:0];

    //-------------------------------------------------------------
    //                   judging LOAD relvance
    //-------------------------------------------------------------
    wire       ex_stall_primary   = ex_up_bus_i[0];
    wire [4:0] ex_waddr_primary   = ex_up_bus_i[5:1];
    wire       ex_stall_secondary = ex_up_bus_i[6];
    wire [4:0] ex_waddr_secondary = ex_up_bus_i[11:7];
    
    wire       mem1_stall_primary   = mem1_up_bus_i[0];
    wire [4:0] mem1_waddr_primary   = mem1_up_bus_i[5:1];

    wire       mem2_stall_primary   = mem2_up_bus_i[0];
    wire [4:0] mem2_waddr_primary   = mem2_up_bus_i[5:1];

    wire opdata1_stall_primary = reg1_read_primary && |reg1_read_addr_primary && (
                                        (reg1_read_addr_primary == ex_waddr_primary    ) && (ex_stall_primary     ) ||
                                        (reg1_read_addr_primary == ex_waddr_secondary  ) && (ex_stall_secondary   ) ||
                                        (reg1_read_addr_primary == mem1_waddr_primary  ) && (mem1_stall_primary   ) ||
                                        (reg1_read_addr_primary == mem2_waddr_primary  ) && (mem2_stall_primary   )
                                    );
    wire opdata2_stall_primary = reg2_read_primary && |reg2_read_addr_primary && (
                                        (reg2_read_addr_primary == ex_waddr_primary    ) && (ex_stall_primary     ) ||
                                        (reg2_read_addr_primary == ex_waddr_secondary  ) && (ex_stall_secondary   ) ||
                                        (reg2_read_addr_primary == mem1_waddr_primary  ) && (mem1_stall_primary   ) ||
                                        (reg2_read_addr_primary == mem2_waddr_primary  ) && (mem2_stall_primary   )
                                    );
    wire opdata1_stall_secondary = reg1_read_secondary && |reg1_read_addr_secondary && (
                                        (reg1_read_addr_secondary == ex_waddr_primary    ) && (ex_stall_primary     ) ||
                                        (reg1_read_addr_secondary == ex_waddr_secondary  ) && (ex_stall_secondary   ) ||
                                        (reg1_read_addr_secondary == mem1_waddr_primary  ) && (mem1_stall_primary   ) ||
                                        (reg1_read_addr_secondary == mem2_waddr_primary  ) && (mem2_stall_primary   )
                                    );
    wire opdata2_stall_secondary = reg2_read_secondary && |reg2_read_addr_secondary && (
                                        (reg2_read_addr_secondary == ex_waddr_primary    ) && (ex_stall_primary     ) ||
                                        (reg2_read_addr_secondary == ex_waddr_secondary  ) && (ex_stall_secondary   ) ||
                                        (reg2_read_addr_secondary == mem1_waddr_primary  ) && (mem1_stall_primary   ) ||
                                        (reg2_read_addr_secondary == mem2_waddr_primary  ) && (mem2_stall_primary   )
                                    );
    
    assign stall_relvance_primary   = !allow_delay_exe_primary && (opdata1_stall_primary | opdata2_stall_primary);
    assign stall_relvance_secondary = !allow_delay_exe_secondary && (opdata1_stall_secondary | opdata2_stall_secondary);
    
    wire need_delay_exe_primary   = allow_delay_exe_primary && (opdata1_stall_primary | opdata2_stall_primary);
    wire need_delay_exe_secondary = allow_delay_exe_secondary && (opdata1_stall_secondary | opdata2_stall_secondary);

    //-------------------------------------------------------------
    //                      output
    //-------------------------------------------------------------
    //------------- rsrt output -------------
    assign rsrt_primary_o   = {reg1_read_addr_primary,reg2_read_addr_primary};
    assign rsrt_secondary_o = {reg1_read_addr_secondary,reg2_read_addr_secondary};

    //----- pipeline output -----
    assign id_allowin_o = id_allowin;
    assign id_ex_valid_o = id_ex_valid;
    assign id_ex_bus_primary_o  =   {301{id_valid}} & 
                                    {   reg2_read_addr_primary,reg2_read_primary,reg1_read_addr_primary,reg1_read_primary,need_delay_exe_primary,
                                        predictor_bht_flag_primary,predictor_pht_flag_primary,predictor_addr_primary,predictor_flag_primary,branch_addr_primary_tmp,
                                        hilo_write_primary,
                                        cp0_addr_primary,cp0_write_primary,
                                        mem_addr_primary,
                                        in_delayslot_primary,exception_type_primary,
                                        link_addr_primary,
                                        opdata2_primary,opdata1_primary,aluop_primary,alusel_primary,
                                        reg_waddr_primary,reg_write_primary,
                                        inst_addr_primary };

    assign id_ex_bus_secondary_o =  {206{valid_secondary}} &  
                                    {   reg2_read_addr_secondary,reg2_read_secondary,reg1_read_addr_secondary,reg1_read_secondary,need_delay_exe_secondary,
                                        predictor_bht_flag_secondary,predictor_pht_flag_secondary,predictor_addr_secondary,predictor_flag_secondary,
                                        hilo_write_secondary,
                                        cp0_addr_secondary,cp0_write_secondary,
                                        in_delayslot_secondary,exception_type_secondary,
                                        opdata2_secondary,opdata1_secondary,aluop_secondary,alusel_secondary,
                                        reg_waddr_secondary,reg_write_secondary, 
                                        inst_addr_secondary,valid_secondary};

endmodule