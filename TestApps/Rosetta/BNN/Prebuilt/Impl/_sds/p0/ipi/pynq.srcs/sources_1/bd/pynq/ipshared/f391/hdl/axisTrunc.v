`timescale 1ns / 1ps

module axisTrunc (
    //IN AXI Stream interface
    input IN_TLAST,
    input IN_TVALID,
    input [IN_WIDTH-1:0] IN_TDATA,
    output IN_TREADY,
    //OUT AXI Stream interface
    output OUT_TLAST,
    output OUT_TVALID,
    output [OUT_WIDTH-1:0] OUT_TDATA,
    input OUT_TREADY
    );
    
parameter IN_WIDTH=32;
parameter OUT_WIDTH=27;

   assign OUT_TVALID = IN_TVALID;
   assign OUT_TLAST = IN_TLAST;
   assign IN_TREADY = OUT_TREADY;

generate
    if(IN_WIDTH > OUT_WIDTH)
	assign OUT_TDATA = IN_TDATA[OUT_WIDTH-1:0];
    else
	assign OUT_TDATA = IN_TDATA;
endgenerate

endmodule

