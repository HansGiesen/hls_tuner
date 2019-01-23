`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2016 02:21:10 PM
// Design Name: 
// Module Name: axis2bram_interface
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


module axis2bram_interface #(
    parameter AXIS_DATA_WIDTH = 32,
    parameter BRAM_ADDR_WIDTH = 4,
    parameter BRAM_DATA_WIDTH = 32,
    parameter BRAM_DATA_DEPTH = 16
    )(
    //Control interface
    input ACC_CLK,
    input ARESETN,
    input CTRL_ALLOW,       //Enable data to be written into BRAM
    output CTRL_FINISHED,   //end of transfer - increment next multibuffer
    //AXI Stream interface
    input AXIS_TLAST,
    input AXIS_TVALID,
    input [AXIS_DATA_WIDTH-1:0] AXIS_TDATA,
    output AXIS_TREADY,
    //BRAM interface
    output [BRAM_ADDR_WIDTH-1:0] BRAM_ADDR,
    output [BRAM_DATA_WIDTH/8-1:0] BRAM_WREN,
    output [BRAM_DATA_WIDTH-1:0] BRAM_DOUT,
    output [31:0] DATA_DEPTH
    );
    
    localparam NUM_BYTES = BRAM_DATA_WIDTH/8;
    
    reg running;
    reg done;
    wire data_valid;
    reg [BRAM_ADDR_WIDTH:0] current_address;
    reg [31:0] data_count;
    
    //external port assignments
    assign AXIS_TREADY = running;   
    assign BRAM_ADDR = current_address[BRAM_ADDR_WIDTH-1:0];
    assign BRAM_WREN = {NUM_BYTES{data_valid}};
    assign BRAM_DOUT = AXIS_TDATA;   
    assign CTRL_FINISHED = done;
    assign DATA_DEPTH = data_count;
    
    //internal static assignments
    assign data_valid = CTRL_ALLOW && AXIS_TVALID;
    
    //data process
    always @(posedge ACC_CLK) begin
        if(~ARESETN) begin
            current_address <= 0;
            running <= 0;
            data_count <= 0;
        end 
        else begin
            //default values
            done <= 0;
                
            if(CTRL_ALLOW && ~running && ~done) begin
                running <= 1;
            end 
            
            if(running && data_valid && ~AXIS_TLAST) begin     //data valid but not the last
                current_address <= current_address + NUM_BYTES;
            end
            else if(running && data_valid && AXIS_TLAST) begin //data valid and last
                done <= 1;
                running <= 0;
                current_address <= 0;
                data_count <= current_address + NUM_BYTES;
            end
        end
    end

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
