`timescale 1ns / 1ps

module axis_fifo #
  (
   parameter C_DATA_WIDTH = 32,
   parameter C_DATA_DEPTH = 16,
   parameter C_IS_ASYNC = 0
   ) (
      input aresetn,
      input inclk,
      input [C_DATA_WIDTH-1:0] in_tdata,
      input in_tlast,  
      input in_tvalid,
      output in_tready,
      input outclk, 
      output [C_DATA_WIDTH-1:0] out_tdata,
      input out_tready,
      output out_tvalid,
      output out_tlast
      );

   wire [C_DATA_WIDTH:0] in_data;
   wire [C_DATA_WIDTH:0] out_data;
   wire full, empty;

   assign in_data = {in_tlast,in_tdata};
   assign out_tdata = out_data[C_DATA_WIDTH-1:0];
   assign out_tlast = out_data[C_DATA_WIDTH];
   
   assign in_tready = ~full;
   assign out_tvalid = ~empty;
   
   localparam REAL_WIDTH = C_DATA_WIDTH + 1;
   
    fifo #( 
        .WIDTH(REAL_WIDTH),
        .DEPTH(C_DATA_DEPTH),
        .IS_ASYNC(C_IS_ASYNC)
    ) axis_fifo0_i (
        .wr_clk(inclk),
        .din(in_data),
        .write(in_tvalid),
        .full(full),
        .dout(out_data),
        .read(out_tready),
        .empty(empty),
        .rd_clk(outclk),
	.rst(~aresetn)
    );
            
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
