`timescale 1ns / 1ps


module outaxis(
    //Control interface
    input ACC_CLK,
    input ARESETN,
    input CTRL_ALLOW,       //Assert TLAST
    output CTRL_READY,      //Unused
    output CTRL_FINISHED,   //End of transfer
    //Data Motion AXIS
    output DM_TLAST,
    output DM_TVALID,
    output [DATA_WIDTH-1:0] DM_TDATA,
    input DM_TREADY,
    //Accelerator AXIS
    input AP_TLAST,	 
    output AP_TREADY,
    input [DATA_WIDTH-1:0] AP_TDATA,
    input AP_TVALID
    );
    
parameter DATA_WIDTH=64;
parameter GEN_TLAST=0;        //zero (0) use TLAST from accelerator, one (1) means generate the TLAST using ap_done

    reg [DATA_WIDTH-1:0] data_reg;      //temporary storage for data
    reg data_reg_vld;                   //data in reg is valid
    reg tlast;
    
    generate
       if(GEN_TLAST) begin
	 assign DM_TLAST = tlast;          //pass tlast out from register
         assign CTRL_FINISHED = (~tlast) & (~data_reg_vld);  //transfer is done after tlast & reg_vld are cleared (with both clocks)
         assign DM_TVALID = data_reg_vld & DM_TREADY & (AP_TVALID | tlast);
         assign DM_TDATA = data_reg;       //pass data out from register
         assign AP_TREADY = ~(data_reg_vld & (~DM_TREADY));   //if data in reg is valid, it's full
       end
       else begin
	 assign DM_TLAST = AP_TLAST;
         assign CTRL_FINISHED = AP_TLAST & DM_TREADY;
         assign DM_TVALID = AP_TVALID;
         assign DM_TDATA = AP_TDATA;
         assign AP_TREADY = DM_TREADY;       
       end
    endgenerate
   
    assign CTRL_READY = 1; //always ready
    
    //assign tlast on the control clock
    always @(posedge ACC_CLK) begin
        if(~ARESETN)
            tlast <= 0;
        else begin
            if(~tlast && CTRL_ALLOW)
                tlast <= 1;
            if(tlast && DM_TREADY)
                tlast <= 0;
        end
    end
    
    //assign reg_vld on the AXIS clock, and clock in data to reg
    always @(posedge ACC_CLK) begin
		if(~ARESETN) begin
			data_reg <= 32'hDEADBEEF;
			data_reg_vld <= 0;
		end
		else begin
			//latch data into reg
			if((~data_reg_vld) && AP_TVALID) begin //if reg is empty, & has FIFO data
				data_reg <= AP_TDATA;   //latch data
				data_reg_vld <= 1;      //data is valid
			end
			
			//send data out & latch in next data
			if(data_reg_vld && DM_TREADY && AP_TVALID)
		                data_reg <= AP_TDATA;      //read in next data
				
			//last data in reg is sent out
			if(data_reg_vld && DM_TREADY && tlast)
				data_reg_vld <= 0;
		end
    end
    
endmodule
