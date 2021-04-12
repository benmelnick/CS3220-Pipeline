`include "VX_define.vh"

/* 
 * Branch Target Buffer module
 * used to predict the direction and target of a branch instruction given the PC of the instruction  
 * NOTE: the BTB only holds predicts for branch/jumps that have been taken in the past
 * if a branch is not taken, it does not get an entry in BTB
 */

module BTB(
  input clk,
  input reset,
  input[`from_FE_to_BTB_WIDTH-1:0] from_FE_to_BTB,
  input[`from_WB_to_BTB_WIDTH-1:0] from_WB_to_BTB,
  output br_taken_BTB,
  output [`INSTBITS-1:0] pctarget_BTB
);

  // signals from FE stage - needed for determining hit or miss
  wire [`INSTBITS-1:0] PC_FE;

  // signals from WB stage - needed for updating the BTB
  wire [`INSTBITS-1:0] PC_WB;
  wire is_br_WB;
  wire br_taken_WB;
  wire [`INSTBITS-1:0] pctarget_WB;

  /* intermediate signals */
  // indices in read and write operations
  wire [`BTB_INDEX_BITS-1:0] btb_rd_index;
  wire [`BTB_INDEX_BITS-1:0] btb_wr_index;
  // current values in the BTB
  wire [`INSTBITS-1:0] btb_rd_entry_pc;
  wire [`INSTBITS-1:0] btb_rd_target_pc;
  wire [`INSTBITS-1:0] btb_wr_entry_pc;
  wire [`INSTBITS-1:0] btb_wr_target_pc;

  // set up the BTB as an array of registers 
  // array with BTB_SIZE elements, where each element corresponds to a line in the BTB
  // each line in the BTB has BTB_LINE_BITS
  reg[`BTB_LINE_BITS-1:0] btb[`BTB_SIZE-1:0];

  // pull out singals from inputs to module
  assign PC_FE = from_FE_to_BTB;
  assign {PC_WB, is_br_WB, br_taken_WB, pctarget_WB} = from_WB_to_BTB;

  // determine indices for read and write to BTB
  assign btb_rd_index = PC_FE[`BTB_INDEX_BITS-1:0];  // BTB is read during FE stage
  assign btb_wr_index = PC_WB[`BTB_INDEX_BITS-1:0];  // BTB is written during WB stage

  // get the current lines in each index
  assign {btb_rd_entry_pc, btb_rd_target_pc} = btb[btb_rd_index];
  assign {btb_wr_entry_pc, btb_wr_target_pc} = btb[btb_wr_index];

  // Determine HIT or MISS in btb
  // Since the BTB only stores taken branches/jumps, we can determine HIT/MISS by comparing the PC of the
  //   current instruction in the FE stage and the PC of indexed entry in the BTB
  // If they match, it is a hit
  assign br_taken_BTB = (btb_rd_entry_pc == PC_FE) ? 1 : 0;
  assign pctarget_BTB = btb_rd_target_pc;

  // Writing to the BTB occurs on falling edge of clock cycle
  always @ (negedge clk or posedge reset) begin
    if (reset) begin
      btb[0] <= {`BTB_LINE_BITS{1'b0}};
      btb[1] <= {`BTB_LINE_BITS{1'b0}};
      btb[2] <= {`BTB_LINE_BITS{1'b0}};
      btb[3] <= {`BTB_LINE_BITS{1'b0}};
      btb[4] <= {`BTB_LINE_BITS{1'b0}};
      btb[5] <= {`BTB_LINE_BITS{1'b0}};
      btb[6] <= {`BTB_LINE_BITS{1'b0}};
      btb[7] <= {`BTB_LINE_BITS{1'b0}};
      btb[8] <= {`BTB_LINE_BITS{1'b0}};
      btb[9] <= {`BTB_LINE_BITS{1'b0}};
      btb[10] <= {`BTB_LINE_BITS{1'b0}};
      btb[11] <= {`BTB_LINE_BITS{1'b0}};
      btb[12] <= {`BTB_LINE_BITS{1'b0}};
      btb[13] <= {`BTB_LINE_BITS{1'b0}};
      btb[14] <= {`BTB_LINE_BITS{1'b0}};
      btb[15] <= {`BTB_LINE_BITS{1'b0}};
    end 
    // update the BTB if a branch instruction is in the WB stage
    else if (is_br_WB) begin
      if (btb_wr_entry_pc != PC_WB) begin
        // the instruction was not in the BTB - add the entry to the table
        btb[btb_wr_index] <= {PC_WB, pctarget_WB};
      end
      else begin
        // instruction was already in the BTB
        // clear the entry if the branch was not taken
        if (!br_taken_WB)
          btb[btb_wr_index] <= {`BTB_LINE_BITS{1'b0}};
      end
    end

  end

endmodule