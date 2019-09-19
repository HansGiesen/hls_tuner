`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2016 02:21:10 PM
// Design Name: 
// Module Name: adapter_axis2bram
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


module bram2axis_interface #(
    parameter AXIS_DATA_WIDTH = 64,
    parameter BRAM_ADDR_WIDTH = 32,
    parameter BRAM_DATA_WIDTH = 32,
    parameter BRAM_DATA_DEPTH = 4
    )(
    //Control interface
    input ACC_CLK,
    input ARESETN,
    input CTRL_ALLOW,       //Enable data to be written into BRAM
    output CTRL_FINISHED,   //End of transfer - TLAST received
    //AXI Stream interface
    output AXIS_TLAST,
    output AXIS_TVALID,
    output [AXIS_DATA_WIDTH-1:0] AXIS_TDATA,
    input AXIS_TREADY,
    //BRAM interfaces
    output [BRAM_ADDR_WIDTH-1:0] BRAM_ADDR,
    input [BRAM_DATA_WIDTH-1:0] BRAM_DIN,
    input [31:0] DATA_DEPTH,
    output DATA_DEPTH_READ,
    input DATA_DEPTH_EMPTY
    );
    
    localparam NUM_BYTES = BRAM_DATA_WIDTH/8;
    localparam DEPTH_BYTES = BRAM_DATA_DEPTH * NUM_BYTES;
    localparam idle=0,run=1,stall=2,done=3;
    
    reg [1:0] state;
    reg next;
    reg tvalid;
    reg tlast;
    wire data_valid;
    reg allow_reg;
    reg [BRAM_ADDR_WIDTH-1:0] current_address;
    reg [31:0] depth_reg;
    reg [BRAM_DATA_WIDTH-1:0] data_reg;
    wire [31:0] depth_m1;
    wire [31:0] current_p1;
    reg depth_read;
    
    //external port assignments
    assign AXIS_TVALID = tvalid;
    assign AXIS_TLAST = tlast;    
    assign AXIS_TDATA = (state == run || state == done) ? BRAM_DIN : data_reg;
    
    assign BRAM_ADDR = current_address;  
      
    assign CTRL_FINISHED = next;
    
    assign DATA_DEPTH_READ = depth_read;
    
    //internal static assignments
    assign data_valid = allow_reg && AXIS_TVALID;
    assign depth_m1 = depth_reg-NUM_BYTES;
    assign current_p1 = current_address + NUM_BYTES;
    assign current_m1 = current_address - NUM_BYTES;
        
    //data process
    always @(posedge ACC_CLK) begin
        allow_reg <= CTRL_ALLOW;
        if(~ARESETN) begin
            current_address <= 0;
            tlast <= 0;
            tvalid <= 0;
            state <= idle; 
        end 
        else begin
            //default values
            depth_read <= 0;
            next <= 0;
            
            case(state)
                idle: begin
                    if(allow_reg && CTRL_ALLOW) begin
                        state <= run;
                        
                        tvalid <= 1;
                        if(DATA_DEPTH_EMPTY) //if depth fifo is empty, use static depth
                            depth_reg <= DEPTH_BYTES;
                        else begin
                            depth_reg <= DATA_DEPTH;
                            depth_read <= 1;
                        end
                        
                        if(AXIS_TREADY)
                            current_address <= current_p1;
                    end
                end
                run: begin
                    if(AXIS_TREADY) begin
                        if(current_address < depth_m1) begin
                            current_address <= current_p1;
                            tvalid <= 1;
                            tlast <= 0;
                        end
                        else begin
                            state <= done;
                            
                            tlast <= 1;
                        end
                    end
                    else begin
                        state <= stall;
                        
                        data_reg <= BRAM_DIN;                        
                    end
                end
                stall: begin
                    if(AXIS_TREADY) begin
                        if(current_address < depth_m1) begin
                           current_address <= current_p1;
                           state <= run;
			end
                        else begin
                            state <= done;
                            
                            tlast <= 1;
                        end
                    end
                end
                done: begin
                    if(tlast && AXIS_TREADY) begin                        
                        next <= 1;      
                        tvalid <= 0;
                        tlast <= 0;   
                        current_address <= 0;
                    end
                    
                    if(next)
                        state <= idle;
                end
            endcase
        end
    end

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
