`include "VX_define.vh" 

/* detects data and control hazards and sends stall signals for each */

module STALL_UNIT(
  input[`from_DE_to_stall_WIDTH-1:0] from_DE_to_stall,
  input[`from_AGEX_to_stall_WIDTH-1:0] from_AGEX_to_stall,
  input[`from_MEM_to_stall_WIDTH-1:0] from_MEM_to_stall,
  output data_hazard,
  output branch_hazard
);

/* intermediate signals for stall condition logic */
// DE signals
wire [`REGNOBITS-1:0] rs_DE;
wire [`REGNOBITS-1:0] rt_DE;
wire [`OP1BITS-1:0] op1_DE;
wire is_br_DE;
wire is_jmp_DE;

// AGEX signals
wire [`REGNOBITS-1:0] wregno_AGEX;
wire wr_reg_AGEX;

// MEM signals
wire [`REGNOBITS-1:0] wregno_MEM;
wire wr_reg_MEM;

wire rt_read_DE;
wire RAW_from_MEM;
wire RAW_from_AGEX;

/* determine if RAW hazard exists */

// pull out signals from inputs to module
assign {rs_DE, rt_DE, op1_DE, is_br_DE, is_jmp_DE} = from_DE_to_stall;
assign {wregno_AGEX, wr_reg_AGEX} = from_AGEX_to_stall;
assign {wregno_MEM, wr_reg_MEM} = from_MEM_to_stall;

// first check if Rt is actually read by instruction in DE
// all instructions read Rs but not all instructions read Rt
// ALUR, BR, and SW read Rt
assign rt_read_DE = (op1_DE == `OP1_ALUR) || (op1_DE[5:2] = 4'b0010) || (op1_DE == `OP1_SW);

// check both AGEX and MEM stages for dependencies
assign RAW_from_AGEX = wr_reg_AGEX && (rs_DE == wregno_AGEX || (rt_read_DE && rt_DE == wregno_AGEX));
assign RAW_from_MEM = wr_reg_MEM && (rs_DE == wregno_MEM || (rt_read_DE && rt_DE == wregno_MEM));

/* set stall signals to send to other pipeline stages */
assign data_hazard = stall_from_AGEX || stall_from_MEM;
assign branch_hazard = is_br_DE || is_jmp_DE; // branches/jumps aren't resolved until AGEX stage 
