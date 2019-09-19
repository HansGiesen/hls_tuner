`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx Inc.
// Engineer: Sam Skalicky
// 
// Create Date: 01/13/2016 03:46:50 PM
// Design Name: Accelerator Adapter
// Module Name: in_register
// Project Name: SDSoC Core Infrastructure 
// Target Devices: zynq
// Tool Versions: 2015.4
// Description: Generic N-bit wide input register. data is written into the register
//      in 32-bit chunks in a revolving fashion.
// 
// Dependencies: None
// 
// Revision 1.0
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module in_register(
    input [31:0] din,
    input we,
    input clk,
    output [C_NUM_BITS-1:0] dout,
    output ready
    );
    
// function called cdiv32 returns the ceil(n/32)                     
function integer cdiv32 (input integer bit_depth);   
    integer div;           
begin           
    div = bit_depth - ((bit_depth / 32) * 32);  //get (bit_depth mod 32)        
    if(div == 0)
        cdiv32 = bit_depth / 32;
    else
        cdiv32 = 1 + (bit_depth / 32);     
end
endfunction   

// function called clogb2 returns the log2(n)                     
function integer clogb2 (input integer bit_depth);              
begin                                                           
    for(clogb2=0; bit_depth>1; clogb2=clogb2+1)                   
        bit_depth = bit_depth >> 1;                                 
    end                                                           
endfunction 
    
parameter C_NUM_BITS = 32;
localparam C_NUM_WORDS = cdiv32(C_NUM_BITS);
localparam C_UPPER_BITS = 32 - ((C_NUM_WORDS*32) - C_NUM_BITS); 
localparam C_COUNT_BITS = clogb2(C_NUM_WORDS);

    reg [C_NUM_WORDS*32-1:0] data = 0;
    reg [C_COUNT_BITS:0] count=0;
    reg ready_i = 0;
    
    assign dout = data[C_NUM_BITS-1:0];
    assign ready = ready_i;
        
    //demux 32-bit data in to each word
    genvar idx;
    generate
        for(idx=0; idx<C_NUM_WORDS; idx=idx+1) begin :REG_WORD_GEN
            if(idx == C_NUM_WORDS-1) begin //last word
                always @(posedge clk) begin
                    if(we && count == idx)
                        data[((idx+1)*32)-1:(idx*32)] <= din[C_UPPER_BITS-1:0];
                end
            end
            else begin 
                always @(posedge clk) begin
                    if(we && count == idx)
                        data[((idx+1)*32)-1:(idx*32)] <= din;
                end
            end
        end
    endgenerate
    
    generate
        always @(posedge clk) begin 
           ready_i <= 0;
            if(we) begin
                if(C_NUM_WORDS > 1) begin            
                    if(count == C_NUM_WORDS-1) begin
                        count <= 0; 
                        ready_i <= 1;
                    end
                    else 
                        count <= count + 1;
                end
                else begin
                    ready_i <= 1;
                end
            end
        end
    endgenerate

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
