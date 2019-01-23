`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2016 12:10:55 PM
// Design Name: 
// Module Name: adapter_axis2fifo
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


module axis2fifo (
    //Control interface
    input ACC_CLK,
    input ARESETN,
    input CTRL_ALLOW,			//Start transfer
    output CTRL_READY,			//Data is ready on the input interface
    output CTRL_FINISHED,		//End of transfer
    //AXI Stream interface
    input AXIS_TLAST,
    input AXIS_TVALID,
    input [DATA_WIDTH-1:0] AXIS_TDATA,
    output AXIS_TREADY,
    //FIFO interface
    output FIFO_EMPTY,
    output [DATA_WIDTH-1:0] FIFO_DOUT,
    input FIFO_READ
    );
    
parameter DATA_WIDTH=64;
parameter EMPTY_ACTIVE=0;   //zero (0) means active low, one (1) means active high

    wire start;         //signal to start the transaction
    reg running;        //track if AXI transaction is in progress
    wire enable;        //enable the AXIS-FIFO interface
    reg finished;       //track if we saw TLAST after running
    
    assign start = CTRL_ALLOW & (~running); //start if control says 'so' and we're not already running
    assign enable = running && (~finished);        //enable the interface if we're running, disables when done running immediately
        
    assign CTRL_FINISHED = finished;                //transaction is done
    assign CTRL_READY = 1; //always ready
    
    assign FIFO_DOUT = AXIS_TDATA;      //pass through data
    
    //set active low/high for empty
    generate
        if(EMPTY_ACTIVE)
            assign FIFO_EMPTY = ((enable)?(~AXIS_TVALID):1); //invert the valid signal (if its valid, its not empty -- active high, empty when '1')
        else
            assign FIFO_EMPTY = ((enable)?AXIS_TVALID:0);  //pass through the valid signal (if its valid, its not empty -- active low, empty when '0')
    endgenerate
    
    assign AXIS_TREADY = ((enable)?FIFO_READ:0);
    
    //running tracker
    always @(posedge ACC_CLK) begin
        if(~ARESETN)
            running <= 0;
        else begin
            if(start)
                running <= 1;     
            if(running && finished)
                running <= 0;
        end
    end
    
    //finished tracker
    always @(posedge ACC_CLK) begin
        if(~ARESETN)
            finished <= 0;
        else begin
            if(start)   //if transaction starts, its not done
                finished <= 0;
                
            if(running && AXIS_TVALID && AXIS_TLAST && FIFO_READ)    //transaction is done 
                finished <= 1;
        end
    end

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
