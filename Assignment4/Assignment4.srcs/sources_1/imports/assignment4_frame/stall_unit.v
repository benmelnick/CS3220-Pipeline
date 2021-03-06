`include "VX_define.vh" 

/* detects data and control hazards and sends stall signals for each */

module STALL_UNIT(
  input[`from_DE_to_stall_WIDTH-1:0] from_DE_to_stall,
  input[`from_AGEX_to_stall_WIDTH-1:0] from_AGEX_to_stall,
  input[`from_MEM_to_stall_WIDTH-1:0] from_MEM_to_stall,
  output data_hazard,
  output[`from_stall_to_DE_WIDTH-1:0] from_stall_to_DE 
);

  /* intermediate signals for stall condition logic */
  // DE signals
  wire [`REGNOBITS-1:0] rs_DE;
  wire [`REGNOBITS-1:0] rt_DE;
  wire [`OP1BITS-1:0] op1_DE;

  // AGEX signals
  wire [`OP1BITS-1:0] op1_AGEX;
  wire [`REGNOBITS-1:0] wregno_AGEX;
  wire wr_reg_AGEX;
  wire [`DBITS-1:0] regval_AGEX;

  // MEM signals
  wire [`REGNOBITS-1:0] wregno_MEM;
  wire wr_reg_MEM;
  wire [`DBITS-1:0] regval_MEM;

  wire rt_read_DE;
  wire RAW_from_MEM;
  wire RAW_from_AGEX;

  // registers to hold the register values sent back to the DE stage
  // needed to be declared as registers so they can be updated in an always block
  reg [`DBITS-1:0] regval1_forwarded;
  reg [`DBITS-1:0] regval2_forwarded;

  // one bit signals to tell DE stage to use forwarded value instead of value from register file
  reg forward_reg1;
  reg forward_reg2;

  /* determine if RAW hazard exists */

  // pull out signals from inputs to module
  assign {rs_DE, rt_DE, op1_DE} = from_DE_to_stall;
  assign {op1_AGEX, wregno_AGEX, wr_reg_AGEX, regval_AGEX} = from_AGEX_to_stall;
  assign {wregno_MEM, wr_reg_MEM, regval_MEM} = from_MEM_to_stall;

  // first check if Rt is actually read by instruction in DE
  // all instructions read Rs but not all instructions read Rt
  // ALUR, BR, and SW read Rt
  assign rt_read_DE = (op1_DE == `OP1_ALUR) || (op1_DE[5:2] == 4'b0010) || (op1_DE == `OP1_SW);

  // check both AGEX and MEM stages for dependencies
  assign RAW_from_AGEX = wr_reg_AGEX && (rs_DE == wregno_AGEX || (rt_read_DE && rt_DE == wregno_AGEX));
  assign RAW_from_MEM = wr_reg_MEM && (rs_DE == wregno_MEM || (rt_read_DE && rt_DE == wregno_MEM));

  /* set stall signals to send to other pipeline stages */

  // the only data hazard that can cause a stall is when there is a memory operation currently in the AGEX stage
  // would need to wait an extra cycle for the operation to reach the MEM stage 
  assign data_hazard = RAW_from_AGEX && op1_AGEX == `OP1_LW;

  // Send result of forwarding back to DE stage
  assign from_stall_to_DE = {forward_reg1, forward_reg2, regval1_forwarded, regval2_forwarded};

  always @ (RAW_from_AGEX or RAW_from_MEM or wregno_AGEX or wregno_MEM or regval_AGEX or regval_MEM or rs_DE or rt_DE or rt_read_DE) begin
    if (RAW_from_AGEX && RAW_from_MEM) begin
      // hazards from both stages
      if (wregno_AGEX == wregno_MEM) begin
        // instructions are writing to the same register - use AGEX value since it is a newer instruction
        forward_reg1 = (rs_DE == wregno_AGEX) ? 1'b1 : 1'b0;
        regval1_forwarded = regval_AGEX;

        forward_reg2 = (rt_read_DE && rt_DE == wregno_AGEX) ? 1'b1 : 1'b0;
        regval2_forwarded = regval_AGEX;
      end
      else begin
        // instructions in AGEX and MEM are writing to two different registers
        // check each source register to see which stage it depends on

        // check which stage should forward the value for rs (if necessary)
        if (rs_DE == wregno_AGEX) begin
          forward_reg1 = 1'b1;
          regval1_forwarded = regval_AGEX;
        end
        else if (rs_DE == wregno_MEM) begin
          forward_reg1 = 1'b1;
          regval1_forwarded = regval_MEM;
        end
        else 
          forward_reg1 = 1'b0;

        // check which stage should forward the value for rt (if necessary)
        if (rt_read_DE && rt_DE == wregno_AGEX) begin
          forward_reg2 = 1'b1;
          regval2_forwarded = regval_AGEX;
        end
        else if (rt_read_DE && rt_DE == wregno_MEM) begin
          forward_reg2 = 1'b1;
          regval2_forwarded = regval_MEM;
        end
        else 
          forward_reg2 = 1'b0;
      end
    end
    else if(RAW_from_AGEX) begin
      // only a hazard with the AGEX stage - check which register(s) can receive the forwarded value
      // only need to compare source registers to destination register of AGEX
      forward_reg1 = (rs_DE == wregno_AGEX) ? 1'b1 : 1'b0;
      regval1_forwarded = regval_AGEX;

      forward_reg2 = (rt_read_DE && rt_DE == wregno_AGEX) ? 1'b1 : 1'b0;
      regval2_forwarded = regval_AGEX;
    end
    else if(RAW_from_MEM) begin
      // only a hazard with the AGEX stage - check which register(s) can receive the forwarded value
      forward_reg1 = (rs_DE == wregno_MEM) ? 1'b1 : 1'b0;
      regval1_forwarded = regval_MEM;
    
      forward_reg2 = (rt_read_DE && rt_DE == wregno_MEM) ? 1'b1 : 1'b0;
      regval2_forwarded = regval_MEM;
    end
    else begin
      // no hazards, so forwarding not needed, can just use the value taken from the register file 
      forward_reg1 = 1'b0;
      forward_reg2 = 1'b0;
    end
  end

endmodule
