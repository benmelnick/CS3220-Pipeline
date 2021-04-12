`include "VX_define.vh"

/* 
 * Branch Target Buffer module
 * used to predict the direction and target of a branch instruction given the PC of the instruction  
 */

 module BTB(
   input reset,
   input[`from_FE_to_BTB_WIDTH-1:0] from_FE_to_BTB,
   input[`from_WB_to_BTB_WIDTH-1:0] from_WB_to_BTB,
   output br_taken_BTB,
   output [`INSTBITS-1:0] pctarget_BTB
 );

 // set up the BTB as an array of registers 
 // array with BTB_SIZE elements, where each element corresponds to a line in the BTB
 // each line in the BTB has BTB_LINE_BITS
 reg[`BTB_LINE_BITS-1:0] btb[`BTB_SIZE-1:0];