`timescale 1ns / 1ps

module inaxis (
    //Control interface
    input ACC_CLK,
    input ARESETN,
    input CTRL_ALLOW,			//Start transfer
    output CTRL_READY,			//Data is ready on the input interface
    output CTRL_FINISHED,		//End of transfer
    //Data Motion AXIS
    input DM_TLAST,
    input DM_TVALID,
    input [DATA_WIDTH-1:0] DM_TDATA,
    output DM_TREADY,
    //Accelerator AXIS
    output AP_TLAST,
    output AP_TVALID,
    output [DATA_WIDTH-1:0] AP_TDATA,
    input AP_TREADY
    );
    
parameter DATA_WIDTH=64;

    wire start;         //signal to start the transaction
    reg running;        //track if AXI transaction is in progress
    wire enable;        //enable the AXIS-FIFO interface
    reg finished;       //track if we saw TLAST after running
    
    assign start = CTRL_ALLOW & (~running); //start if control says 'so' and we're not already running
    assign enable = running && (~finished);        //enable the interface if we're running, disables when done running immediately
        
    assign CTRL_FINISHED = finished;                //transaction is done
    assign CTRL_READY = 1; //always ready
    
    assign AP_TDATA = DM_TDATA;      //pass through data
    assign AP_TLAST = DM_TLAST;
    assign AP_TVALID = ((enable)?DM_TVALID:0);
    
    assign DM_TREADY = ((enable)?AP_TREADY:0);
    
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
                
            if(running && DM_TVALID && DM_TLAST && AP_TREADY)    //transaction is done 
                finished <= 1;
        end
    end

endmodule
