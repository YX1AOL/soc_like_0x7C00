`include "../../Head_Files/cpu.vh"

module excepttpye (
    input  refetch_i,
    input  cop0_unused_i,
    input  cop1_unused_i,
    input  tlb_modified_i,
    input  tlb_invalid_dataaddr_write_i,
    input  tlb_invalid_dataaddr_read_i,
    input  tlb_refill_dataaddr_write_i,
    input  tlb_refill_dataaddr_read_i,
    input  tlb_invalid_instaddr_i,
    input  tlb_refill_instaddr_i,
    input  dataaddr_write_i,
    input  dataaddr_read_i,
    input  trap_i,
    input  overflow_i,
    input  instvaild_i,
    input  eret_i,
    input  break_i,
    input  syscall_i,
    input  instaddr_i,
    input  interrupt_i,

    input  [31:0]exception_vector_i,
    output [31:0]exception_vector_o
    
);  
    //  1#[31] refetch
    //  1#[18] cop0_unused
    //  1#[17] cop1_unused
    //  1#[16] tlb_modified
    //  1#[15] tlb_invalid_dataaddr_write
    //  1#[14] tlb_invalid_dataaddr_read
    //  1#[13] tlb_refill_dataaddr_write
    //  1#[12] tlb_refill_dataaddr_read
    //  1#[11] tlb_invalid_instaddr
    //  1#[10] tlb_refill_instaddr
    //  1#[9]  dataaddr_write
    //  1#[8]  dataaddr_read
    //  1#[7]  trap
    //  1#[6]  overflow
    //  1#[5]  instvaild
    //  1#[4]  eret
    //  1#[3]  break
    //  1#[2]  syscall
    //  1#[1]  instaddr
    //  1#[0]  interrupt

    assign exception_vector_o = exception_vector_i |
                                {   refetch_i,                      //31
                                    12'b0,                          //30:19
                                    cop0_unused_i,                  //18
                                    cop1_unused_i,                  //17
                                    tlb_modified_i,                 //16
                                    tlb_invalid_dataaddr_write_i,   //15
                                    tlb_invalid_dataaddr_read_i,    //14
                                    tlb_refill_dataaddr_write_i,    //13
                                    tlb_refill_dataaddr_read_i,     //12
                                    tlb_invalid_instaddr_i,         //11
                                    tlb_refill_instaddr_i,          //10
                                    dataaddr_write_i,               //9
                                    dataaddr_read_i,                //8
                                    trap_i,                         //7
                                    overflow_i,                     //6
                                    instvaild_i,                    //5
                                    eret_i,                         //4
                                    break_i,                        //3
                                    syscall_i,                      //2
                                    instaddr_i,                     //1
                                    interrupt_i                    //0
                                };

endmodule

/*
    module excepttpye (
        .refetch_i                      (1'b0),
        .cop0_unused_i                  (1'b0),
        .cop1_unused_i                  (1'b0),
        .tlb_modified_i                 (1'b0),
        .tlb_invalid_dataaddr_write_i   (1'b0),
        .tlb_invalid_dataaddr_read_i    (1'b0),
        .tlb_refill_dataaddr_write_i    (1'b0),
        .tlb_refill_dataaddr_read_i     (1'b0),
        .tlb_invalid_instaddr_i         (1'b0),
        .tlb_refill_instaddr_i          (1'b0),
        .dataaddr_write_i               (1'b0),
        .dataaddr_read_i                (1'b0),
        .trap_i                         (1'b0),
        .overflow_i                     (1'b0),
        .instvaild_i                    (1'b0),
        .eret_i                         (1'b0),
        .break_i                        (1'b0),
        .syscall_i                      (1'b0),
        .instaddr_i                     (1'b0),
        .interrupt_i                    (1'b0),

        .exception_vector_i             (),
        .exception_vector_o             ()
    );
*/