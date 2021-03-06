 `include "VX_define.vh" 


module DE_STAGE(
  input clk,
  input reset,
  input [`FE_latch_WIDTH-1:0] from_FE_latch,
  //input [`from_AGEX_to_DE_WIDTH-1:0] from_AGEX_to_DE,  
  //input [`from_MEM_to_DE_WIDTH-1:0] from_MEM_to_DE,     
  input [`from_WB_to_DE_WIDTH-1:0] from_WB_to_DE,  
  input flush,
   // input from stall_unit
  input data_hazard,
  input [`from_stall_to_DE_WIDTH-1:0] from_stall_to_DE,
  //output [`from_DE_to_FE_WIDTH-1:0] from_DE_to_FE,   
  output [`from_DE_to_stall_WIDTH-1:0] from_DE_to_stall,
  output[`DE_latch_WIDTH-1:0] DE_latch_out
);

/* pipeline latch*/ 
 reg [`DE_latch_WIDTH-1:0] DE_latch; 

  /* register file */ 
  reg [`DBITS-1:0] regs [`REGWORDS-1:0];
  
 /* decode signals generated in this stage */
  
  wire [`INSTBITS-1:0] inst_DE; 
  wire [`DBITS-1:0] PC_DE;
  wire [`DBITS-1:0] pcplus_DE; 
  wire [`OP1BITS-1:0] op1_DE;
  wire [`OP2BITS-1:0] op2_DE;
  wire [`IMMBITS-1:0] imm_DE;
  wire [`REGNOBITS-1:0] rd_DE;
  wire [`REGNOBITS-1:0] rs_DE;
  wire [`REGNOBITS-1:0] rt_DE;
  
  wire signed [`DBITS-1:0] regval1_DE;
  wire signed [`DBITS-1:0] regval2_DE;
  wire signed [`DBITS-1:0] sxt_imm_DE;


  wire is_br_DE;
  wire is_jmp_DE;
  wire rd_mem_DE;
  wire wr_mem_DE;
  wire wr_reg_DE;
  wire [`REGNOBITS-1:0] wregno_DE;
  
  wire[`DE_latch_WIDTH-1:0] DE_latch_contents; 
  wire[`BUS_CANARY_WIDTH-1:0] bus_canary_DE; 

  // if this instruction is a branch, this bit indicates the direction of the branch predicted using BTB in FE stage
  wire predicted_dir_DE;

 // signals sent from the WB stage
 wire[`REGNOBITS-1:0] wrregno_WB;
 wire[`DBITS-1:0] regval_WB;
 wire wr_reg_WB;

  // Register forwarding signals sent from stall unit
  wire[`DBITS-1:0] regval1_forwarded;
  wire[`DBITS-1:0] regval2_forwarded;
  wire forward_reg1;
  wire forward_reg2; 

  // instruction decoding - pull signals out of the instruction
  assign op1_DE = inst_DE[31:26]; 
  assign op2_DE = inst_DE[25:18];
  assign imm_DE = inst_DE[23:8];
  assign rd_DE  = inst_DE[11:8];
  assign rs_DE  = inst_DE[7:4];
  assign rt_DE  = inst_DE[3:0];

  // Sign extension  
  SXT mysxt (.IN(imm_DE), .OUT(sxt_imm_DE));

  // Read values from stall unit
  assign {forward_reg1, forward_reg2, regval1_forwarded, regval2_forwarded} = from_stall_to_DE;

  // Read register values
  // Either the actual register file values or some value forwarded from one of AGEX and MEM stages
  assign regval1_DE = forward_reg1 ? regval1_forwarded : regs[rs_DE];
  assign regval2_DE = forward_reg2 ? regval2_forwarded : regs[rt_DE];

  // Determine destination register
  // Rd for ALUR ops, Rt otherwise
  assign wregno_DE = (op1_DE == `OP1_ALUR) ? rd_DE : rt_DE;

  // Determine control signals
  assign is_br_DE = (op1_DE[5:2] == 4'b0010); // top 4 bits of all branch instructions is 0010
  assign is_jmp_DE = (op1_DE == `OP1_JAL); 
  assign rd_mem_DE = (op1_DE == `OP1_LW);
  assign wr_mem_DE = (op1_DE == `OP1_SW);

  // Registers are written in: ALUR, ALUI, JAL, LW
  // Use the canary value to indicate that the data is valid
  // Otherwise this signal could be asserted right when the CPU starts up since the check against ALUR OP1 will be true
  assign wr_reg_DE = (bus_canary_DE != 0) && (op1_DE == `OP1_ALUR || op1_DE[5:3] == 3'b100 || op1_DE == `OP1_JAL || op1_DE == `OP1_LW);

  // assign wire to send the contents of DE latch to other pipeline stages  
  assign DE_latch_out = DE_latch; 

  // decoding the contents of FE latch out. the order should be matched with the fe_stage.v 
  assign {
            inst_DE,
            PC_DE, 
            pcplus_DE,
            predicted_dir_DE,
            bus_canary_DE 
            }  = from_FE_latch;  // based on the contents of the latch, you can decode the content 

// assemble signals to send to stall unit
assign from_DE_to_stall = {rs_DE, rt_DE, op1_DE};

assign DE_latch_contents = {
                              inst_DE,
                              PC_DE,
                              pcplus_DE,
                              op1_DE,
                              op2_DE,
                              regval1_DE,
                              regval2_DE,
                              sxt_imm_DE,
                              is_br_DE,
                              is_jmp_DE,
                              rd_mem_DE,
                              wr_mem_DE,
                              wr_reg_DE,
                              wregno_DE,
                              predicted_dir_DE,
                                bus_canary_DE 
                              }; 

  // pull out contents of wires from WB to DE stage to get data to be written back in falling edge of clock cycle
  assign {
    wrregno_WB,
    regval_WB,
    wr_reg_WB
  } = from_WB_to_DE;
    
  always @ (negedge clk or posedge reset) begin
    if(reset) begin
	  	regs[0] <= {`DBITS{1'b0}};
	  	regs[1] <= {`DBITS{1'b0}};
	   	regs[2] <= {`DBITS{1'b0}};
		  regs[3] <= {`DBITS{1'b0}};
	  	regs[4] <= {`DBITS{1'b0}};
		  regs[5] <= {`DBITS{1'b0}};
		  regs[6] <= {`DBITS{1'b0}};
		  regs[7] <= {`DBITS{1'b0}};
		  regs[8] <= {`DBITS{1'b0}};
		  regs[9] <= {`DBITS{1'b0}};
		  regs[10] <= {`DBITS{1'b0}};
		  regs[11] <= {`DBITS{1'b0}};
		  regs[12] <= {`DBITS{1'b0}};
		  regs[13] <= {`DBITS{1'b0}};
		  regs[14] <= {`DBITS{1'b0}};
		  regs[15] <= {`DBITS{1'b0}};
	  end 
    // register writes happen on falling edge of clock cycle
    else if (wr_reg_WB)
      regs[wrregno_WB] <= regval_WB;
  end

  always @ (posedge clk or posedge reset) begin
    if(reset) begin
      DE_latch <= {`DE_latch_WIDTH{1'b0}};
      // might need more code 
      end
     else if (data_hazard || flush) begin
       // if a data hazard, stall the pipeline by inserting a bubble into output latch to send to the next stage
       // if a flush (from misprediction), flush the DE stage by inserting a bubble into output latch
      DE_latch <= {`DE_latch_WIDTH{1'b0}};
     end
     else
      DE_latch <= DE_latch_contents;
  end

endmodule




module SXT(IN, OUT);
  parameter IBITS = 16;
  parameter OBITS = 32;

  input  [IBITS-1:0] IN;
  output [OBITS-1:0] OUT;

  assign OUT = {{(OBITS-IBITS){IN[IBITS-1]}}, IN};
endmodule

