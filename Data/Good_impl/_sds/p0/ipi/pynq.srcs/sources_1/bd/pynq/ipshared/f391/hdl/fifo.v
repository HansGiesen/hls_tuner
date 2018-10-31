`timescale 1ns / 1ps

module fifo #(
    parameter DEPTH=16,
    parameter WIDTH=32,
    parameter IS_ASYNC=0
    ) (
    input wr_clk,
    input [WIDTH-1:0] din,
    input write,
    output full, 
    output [WIDTH-1:0] dout,
    input read,
    output empty,
    input rd_clk,
    input rst
    );
    
    function integer log2(input integer x);
        integer i;
        if (x == 0)
            log2 = 0;
        else begin
            i = 0;
            while (x > (2**i)) begin
        i = i+1;
            end
            log2 = i;
        end
    endfunction
    
    localparam ADDR_WIDTH = log2(DEPTH);
    localparam FIFO_TYPE = (DEPTH*WIDTH > 32*32) ? "block" : "distributed";
    
    xpm_fifo_async # (    
      .FIFO_MEMORY_TYPE          (FIFO_TYPE),          //string; "auto", "block", or "distributed";
      .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
      .RELATED_CLOCKS            (IS_ASYNC),                //positive integer; 0 or 1
      .FIFO_WRITE_DEPTH          (DEPTH),            //positive integer
      .WRITE_DATA_WIDTH          (WIDTH),            //positive integer
      .WR_DATA_COUNT_WIDTH       (ADDR_WIDTH),       //positive integer
      .PROG_FULL_THRESH          (10),               //positive integer
      .FULL_RESET_VALUE          (0),                //positive integer; 0 or 1
      .READ_MODE                 ("fwft"),           //string; "std" or "fwft";
      .FIFO_READ_LATENCY         (1),                //positive integer;
      .READ_DATA_WIDTH           (WIDTH),            //positive integer
      .RD_DATA_COUNT_WIDTH       (ADDR_WIDTH),       //positive integer
      .PROG_EMPTY_THRESH         (10),               //positive integer
      .DOUT_RESET_VALUE          ("0"),              //string
      .CDC_SYNC_STAGES           (2),                //positive integer
      .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
    ) xpm_fifo_async_inst (
       .rst              (rst),
      .wr_clk           (wr_clk),
      .wr_en            (write),
      .din              (din),
      .full             (full),
//      .overflow         (overflow),
//      .wr_rst_busy      (wr_rst_busy),
      .rd_clk           (rd_clk),
      .rd_en            (read),
      .dout             (dout),
      .empty            (empty),
//      .underflow        (underflow),
//      .rd_rst_busy      (rd_rst_busy),
//      .prog_full        (prog_full),
//      .wr_data_count    (wr_data_count),
//      .prog_empty       (prog_empty),
//      .rd_data_count    (rd_data_count),
      .sleep            (1'b0),
      .injectsbiterr    (1'b0),
      .injectdbiterr    (1'b0),
      .sbiterr          (),
      .dbiterr          ()
    );
            
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
