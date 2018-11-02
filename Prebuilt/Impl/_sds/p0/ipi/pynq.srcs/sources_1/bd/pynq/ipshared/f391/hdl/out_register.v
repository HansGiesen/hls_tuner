`timescale 1ns / 1ps

module out_register(
    input [C_NUM_BITS-1:0] din,
    output read,
    input clk,
    input re,
    output [31:0] dout
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

// function called clogb2 returns the ceil(log2(n))                     
function integer clogb2 (input integer bit_depth);              
begin                                                           
    for(clogb2=0; bit_depth>1; clogb2=clogb2+1)                   
        bit_depth = bit_depth >> 1;                                 
    end                                                           
endfunction 
    
parameter C_NUM_BITS = 32;

localparam C_NUM_WORDS = cdiv32(C_NUM_BITS);
localparam C_COUNT_BITS = clogb2(C_NUM_WORDS);

    wire [31:0] data [0:C_NUM_WORDS-1];
    wire [C_NUM_WORDS*32-1:0] din_i;
    reg [31:0] data_reg;
    reg [C_COUNT_BITS-1:0] count=0;
    reg read_i = 0;
    
    assign dout = data_reg;
    
    assign read = read_i;
    
    //generate block for determining if we need to assign zeros to some bits to have a multiple of 32-bit register
    generate
        if(C_NUM_WORDS*32 > C_NUM_BITS) begin   //if number of bits is not multiple of 32
            assign din_i[C_NUM_BITS-1:0] = din; //assign actual data bits
            assign din_i[C_NUM_WORDS*32-1:C_NUM_BITS] = 0;  //assign upper bits to be zero
        end
        else begin      //else, it IS a multiple of 32, just assign it
            assign din_i = din; //assign actual data bits
        end
    endgenerate
    
    //process to assign 32-bit chunks of input data for reading
    genvar idx;
    generate
        for(idx=0; idx<C_NUM_WORDS; idx=idx+1) begin :REG_WORD_GEN
            assign data[idx] = din_i[((idx+1)*32)-1:(idx*32)];
        end
    endgenerate
    
    generate
        //incrementing the counter when read-enable is valid
        always @(posedge clk) begin
            data_reg <= data[count];
            read_i <= 0;      
            if(re) begin   
                if(C_NUM_WORDS > 1) begin   
                    if(count == C_NUM_WORDS-1) begin
                        count <= 0; 
                        read_i <= 1;
                    end
                    else 
                        count <= count + 1;
                end
                else begin
                    read_i <= 1;                
                end
            end
        end
    endgenerate

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
