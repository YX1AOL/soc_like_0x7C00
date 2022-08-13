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
    output [267:0]  issue_id_bus_primary_o,
    output [171:0]  issue_id_bus_secondary_o
    );
    
    //-------------------------------------------------------------
    //                      signal define
    //-------------------------------------------------------------
    wire [232:0]decode_bus_primary;
    wire [232:0]decode_bus_secondary;

    //-------------------------------------------------------------
    //                      instruction decode
    //-------------------------------------------------------------
    wire        reg_write_primary;
    wire [4:0]  reg_waddr_primary;
    wire        hilo_write_primary;
    wire        wait_delaysolt_primary;
    wire        only_issue_primary;

    decode decode_primary(
        .inst_bus_i     (inst1_bus_i[95:0]),
        .decode_bus_o   (decode_bus_primary),

        .reg_write_o        (reg_write_primary),
        .reg_waddr_o        (reg_waddr_primary),

        .reg1_read_o        (),
        .reg2_read_o        (),
        .reg1_read_addr_o   (),
        .reg2_read_addr_o   (),

        .hilo_write_o       (hilo_write_primary),
        .hilo_read_o        (),

        .not_2_issue_o      (),
        .wait_delaysolt_o   (wait_delaysolt_primary),
        .only_issue_o       (only_issue_primary)
        );

    wire        reg1_read_secondary;
    wire        reg2_read_secondary;
    wire [4:0]  reg1_read_addr_secondary;
    wire [4:0]  reg2_read_addr_secondary;

    wire        hilo_read_secondary;
    wire        not_2_issue_secondary;
    wire        only_issue_secondary;

    decode decode__secondary(
        .inst_bus_i     (inst2_bus_i[95:0]),
        .decode_bus_o   (decode_bus_secondary),

        .reg_write_o        (),
        .reg_waddr_o        (),
        
        .reg1_read_o        (reg1_read_secondary),
        .reg2_read_o        (reg2_read_secondary),
        .reg1_read_addr_o   (reg1_read_addr_secondary),
        .reg2_read_addr_o   (reg2_read_addr_secondary),

        .hilo_write_o       (),
        .hilo_read_o        (hilo_read_secondary),

        .not_2_issue_o      (not_2_issue_secondary),
        .wait_delaysolt_o   () ,
        .only_issue_o       (only_issue_secondary)
        );

    //-------------------------------------------------------------
    //                        issue mode
    //-------------------------------------------------------------

    //regfile WAR between the primary instruction and the secondary instruction
    wire reg_relvance  = reg_write_primary  && |reg_waddr_primary && ((reg1_read_secondary && reg_waddr_primary == reg1_read_addr_secondary) || (reg2_read_secondary && reg_waddr_primary == reg2_read_addr_secondary));
    //HILO WAR between the primary instruction and the secondary instruction 
    wire hilo_relvance = hilo_write_primary && hilo_read_secondary;

    //the secondary instruction is <LOAD,STORE,BRANCH,MUL,DIV,CACHE,LIKELY> || the primary or secondary instruction is <TLB,CP0> || the primary instruciton has WAR relvance with the secondary instruction
    wire need_SingleIssue = not_2_issue_secondary || only_issue_secondary || only_issue_primary || reg_relvance || hilo_relvance;                                  

    //ensure delaysolt in instbuffer
    wire delayslot_no_get = (instbuffer_count_i == `HaveOneInst) && (wait_delaysolt_primary);

    wire [1:0]  issue_mode  =   (instbuffer_count_i == `HaveNoInst  || branch_flag_i || delayslot_no_get)?  `NoIssue:
                                (instbuffer_count_i == `HaveOneInst || (instbuffer_count_i == `HaveTwoInst) && need_SingleIssue )?  `SingleIssue:`DoubleIssue;

    //-------------------------------------------------------------
    //                        output 
    //-------------------------------------------------------------
    //----- pipeline output -----
    assign issue_mode_o              = (id_allowin_i)? issue_mode:`NoIssue;
    assign issue_id_bus_primary_o    = {decode_bus_primary[232],   inst1_bus_i[130:96], decode_bus_primary[231:0]};
    assign issue_id_bus_secondary_o  = {decode_bus_secondary[232], inst2_bus_i[130:96], decode_bus_secondary[199:190], decode_bus_secondary[157:126], decode_bus_secondary[93:0]};

endmodule