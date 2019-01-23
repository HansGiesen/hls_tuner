`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2016 03:59:08 PM
// Design Name: 
// Module Name: bram_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module bram_demux #(
    parameter C_ADDR_WIDTH = 32,
    parameter C_DATA_WIDTH = 32,
    parameter C_NUM_INTERFACES = 2
    )(
    input [SEL_BITS-1:0] sel,
    //BRAM IF
    input [C_ADDR_WIDTH-1:0] bram_addr,
    input [C_DATA_WIDTH-1:0] bram_din,
    output reg [C_DATA_WIDTH-1:0] bram_dout,
    input [C_DATA_WIDTH/8-1:0] bram_we,
    input bram_en,
    //BRAM IF-0
    output [C_ADDR_WIDTH-1:0] bram0_addr,
    output [C_DATA_WIDTH-1:0] bram0_din,
    input [C_DATA_WIDTH-1:0] bram0_dout,
    output [C_DATA_WIDTH/8-1:0] bram0_we,
    output bram0_en,
    //BRAM IF-1
    output [C_ADDR_WIDTH-1:0] bram1_addr,
    output [C_DATA_WIDTH-1:0] bram1_din,
    input [C_DATA_WIDTH-1:0] bram1_dout,
    output [C_DATA_WIDTH/8-1:0] bram1_we,
    output bram1_en,
    //BRAM IF-2
    output [C_ADDR_WIDTH-1:0] bram2_addr,
    output [C_DATA_WIDTH-1:0] bram2_din,
    input [C_DATA_WIDTH-1:0] bram2_dout,
    output [C_DATA_WIDTH/8-1:0] bram2_we,
    output bram2_en,
    //BRAM IF-3
    output [C_ADDR_WIDTH-1:0] bram3_addr,
    output [C_DATA_WIDTH-1:0] bram3_din,
    input [C_DATA_WIDTH-1:0] bram3_dout,
    output [C_DATA_WIDTH/8-1:0] bram3_we,
    output bram3_en,
    //BRAM IF-4
    output [C_ADDR_WIDTH-1:0] bram4_addr,
    output [C_DATA_WIDTH-1:0] bram4_din,
    input [C_DATA_WIDTH-1:0] bram4_dout,
    output [C_DATA_WIDTH/8-1:0] bram4_we,
    output bram4_en,
    //BRAM IF-5
    output [C_ADDR_WIDTH-1:0] bram5_addr,
    output [C_DATA_WIDTH-1:0] bram5_din,
    input [C_DATA_WIDTH-1:0] bram5_dout,
    output [C_DATA_WIDTH/8-1:0] bram5_we,
    output bram5_en,
    //BRAM IF-6
    output [C_ADDR_WIDTH-1:0] bram6_addr,
    output [C_DATA_WIDTH-1:0] bram6_din,
    input [C_DATA_WIDTH-1:0] bram6_dout,
    output [C_DATA_WIDTH/8-1:0] bram6_we,
    output bram6_en,
    //BRAM IF-7
    output [C_ADDR_WIDTH-1:0] bram7_addr,
    output [C_DATA_WIDTH-1:0] bram7_din,
    input [C_DATA_WIDTH-1:0] bram7_dout,
    output [C_DATA_WIDTH/8-1:0] bram7_we,
    output bram7_en
    ); 
    
    function integer clogb2 (input integer bit_depth);
    begin
        bit_depth = bit_depth - 1;
        for (clogb2 = 0; bit_depth > 0; clogb2=clogb2+1)
            bit_depth = bit_depth >> 1;  
    end
    endfunction
    
    localparam SEL_BITS = clogb2(C_NUM_INTERFACES);
    
    reg [C_ADDR_WIDTH-1:0] addr [C_NUM_INTERFACES-1:0];
    reg [C_DATA_WIDTH-1:0] din [C_NUM_INTERFACES-1:0];
    wire [C_DATA_WIDTH-1:0] dout [C_NUM_INTERFACES-1:0];
    reg [C_DATA_WIDTH/8-1:0] we [C_NUM_INTERFACES-1:0];
    reg [C_NUM_INTERFACES-1:0] en;
    
    generate
        if(C_NUM_INTERFACES > 0) begin
            assign bram0_addr = addr[0]; 
            assign bram0_din = din[0];
            assign dout[0] = bram0_dout;
            assign bram0_we = we[0]; 
            assign bram0_en = en[0];
        end
        if(C_NUM_INTERFACES > 1) begin
            assign bram1_addr = addr[1]; 
            assign bram1_din = din[1];
            assign dout[1] = bram1_dout;
            assign bram1_we = we[1];
            assign bram1_en = en[1];
        end
        if(C_NUM_INTERFACES > 2) begin
            assign bram2_addr = addr[2]; 
            assign bram2_din = din[2];
            assign dout[2] = bram2_dout;
            assign bram2_we = we[2];
            assign bram2_en = en[2];
        end
        if(C_NUM_INTERFACES > 3) begin
            assign bram3_addr = addr[3]; 
            assign bram3_din = din[3];
            assign dout[3] = bram3_dout;
            assign bram3_we = we[3];
            assign bram3_en = en[3];
        end
        if(C_NUM_INTERFACES > 4) begin
            assign bram4_addr = addr[4]; 
            assign bram4_din = din[4];
            assign dout[4] = bram4_dout;
            assign bram4_we = we[4];
            assign bram4_en = en[4];
        end
        if(C_NUM_INTERFACES > 5) begin
            assign bram5_addr = addr[5]; 
            assign bram5_din = din[5];
            assign dout[5] = bram5_dout;
            assign bram5_we = we[5];
            assign bram5_en = en[5];
        end
        if(C_NUM_INTERFACES > 6) begin
            assign bram6_addr = addr[6]; 
            assign bram6_din = din[6];
            assign dout[6] = bram6_dout;
            assign bram6_we = we[6];
            assign bram6_en = en[6];
        end
        if(C_NUM_INTERFACES > 7) begin
            assign bram7_addr = addr[7]; 
            assign bram7_din = din[7];
            assign dout[7] = bram7_dout;
            assign bram7_we = we[7];
            assign bram7_en = en[7];
        end
    endgenerate
    
    always @(*) begin
        addr[sel] <= bram_addr;
        din[sel] <= bram_din;
        we[sel] <= bram_we;
        en[sel] <= bram_en;
        bram_dout <= dout[sel];
    end
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
