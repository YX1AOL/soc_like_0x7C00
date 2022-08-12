`include "../../Head_Files/cpu.vh"
    
module seg_issue(
    input clk,
    input rst,

    //fllush signal
    input           branch_flag_i,

    //pipeline control signal
    input           id_allowin_i,

    //instbuffer signal
    input  [1:0]    instbuffer_count_i,
    input  [130:0]  inst1_bus_i,
    input  [130:0]  inst2_bus_i,
    
    //issue 
    output [1:0]    issue_mode_o,
    output [266:0]  issue_id_bus_primary_o,
    output [170:0]  issue_id_bus_secondary_o
    );
    
    //-------------------------------------------------------------
    //                      signal define
    //-------------------------------------------------------------
    wire [231:0]decode_bus_primary;
    wire [231:0]decode_bus_secondary;

    //-------------------------------------------------------------
    //                      instruction decode
    //-------------------------------------------------------------
    wire        reg_write_primary;
    wire [4:0]  reg_waddr_primary;
    wire [3:0]  alusel_primary;
    wire        cp0_write_primary;
    wire [7:0]  cp0_addr_primary;
    wire        hilo_write_primary;

    decode decode_primary(
        .inst_bus_i     (inst1_bus_i[95:0]),
        .decode_bus_o   (decode_bus_primary),

        .reg_write_o        (reg_write_primary),
        .reg_waddr_o        (reg_waddr_primary),
        .alusel_o           (alusel_primary),
        .aluop_o            (),
        .reg1_read_o        (),
        .reg2_read_o        (),
        .reg1_read_addr_o   (),
        .reg2_read_addr_o   (),
        .cp0_write_o        (cp0_write_primary),
        .cp0_addr_o         (cp0_addr_primary),
        .hilo_write_o       (hilo_write_primary)
        );

    wire [3:0]  alusel_secondary;
    wire [7:0]  aluop_secondary;
    wire        reg1_read_secondary;
    wire        reg2_read_secondary;
    wire [4:0]  reg1_read_addr_secondary;
    wire [4:0]  reg2_read_addr_secondary;
    wire        cp0_write_secondary;
    wire [7:0]  cp0_addr_secondary;
    wire        hilo_write_secondary;

    decode decode__secondary(
        .inst_bus_i     (inst2_bus_i[95:0]),
        .decode_bus_o   (decode_bus_secondary),

        .reg_write_o        (),
        .reg_waddr_o        (),
        .alusel_o           (alusel_secondary),
        .aluop_o            (aluop_secondary),
        .reg1_read_o        (reg1_read_secondary),
        .reg2_read_o        (reg2_read_secondary),
        .reg1_read_addr_o   (reg1_read_addr_secondary),
        .reg2_read_addr_o   (reg2_read_addr_secondary),
        .cp0_write_o        (cp0_write_secondary),
        .cp0_addr_o         (cp0_addr_secondary),
        .hilo_write_o       (hilo_write_secondary)
        );

    //-------------------------------------------------------------
    //                        issue mode
    //-------------------------------------------------------------

    //regfile WAR between the primary instruction and the secondary instruction
    wire reg_relvance  = reg_write_primary  && |reg_waddr_primary && ((reg1_read_secondary && reg_waddr_primary == reg1_read_addr_secondary) || (reg2_read_secondary && reg_waddr_primary == reg2_read_addr_secondary));
    //HILO WAR between the primary instruction and the secondary instruction 
    wire hilo_relvance = hilo_write_primary && (aluop_secondary == `MFHI_OP || aluop_secondary == `MFLO_OP);

    //the secondary instruction is <LOAD,STORE,BRANCH,MUL,DIV,CACHE,LIKELY> || the primary or secondary instruction is <TLB,CP0> || the primary instruciton has WAR relvance with the secondary instruction
    wire need_SingleIssue = alusel_secondary == `LOAD   || alusel_secondary == `STORE   || alusel_secondary == `MULDIV  || alusel_secondary == `BRANCH || alusel_secondary == `LIKELY || alusel_secondary == `CACHE ||  aluop_secondary == `CLO_OP || aluop_secondary == `CLZ_OP ||
                            alusel_primary == `TLB      || alusel_secondary == `TLB     || alusel_primary == `CP0       || alusel_secondary == `CP0    ||                                  
                            reg_relvance                || hilo_relvance                ;                                  

    //ensure delaysolt in instbuffer
    wire delayslot_no_get = (instbuffer_count_i == `HaveOneInst) && (alusel_primary == `BRANCH || alusel_primary == `LIKELY);

    wire [1:0]  issue_mode  =   (instbuffer_count_i == `HaveNoInst  || branch_flag_i || delayslot_no_get)?  `NoIssue:
                                (instbuffer_count_i == `HaveOneInst || (instbuffer_count_i == `HaveTwoInst) && need_SingleIssue )?  `SingleIssue:`DoubleIssue;

    //-------------------------------------------------------------
    //                        output 
    //-------------------------------------------------------------
    //----- pipeline output -----
    assign issue_mode_o              = (id_allowin_i)? issue_mode:`NoIssue;
    assign issue_id_bus_primary_o    = {inst1_bus_i[130:96],decode_bus_primary[231:0]};
    assign issue_id_bus_secondary_o  = {inst2_bus_i[130:96],decode_bus_secondary[199:190],decode_bus_secondary[157:126],decode_bus_secondary[93:0]};

endmodule