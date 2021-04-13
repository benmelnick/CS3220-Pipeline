 `include "VX_define.vh" 

module project4_frame(
  input        CLOCK_50,
  input        RESET_N,
  input  [3:0] KEY,
  output [6:0] HEX0,
  output [6:0] HEX1,
  output [9:0] LEDR
);

  
 wire clk;
 wire reset; 
 wire locked; 
 
  
  //*** PLL IP module is called here. ***//
clk_wiz_0 my_clock
 (
  .clk_out1(clk),
  .reset(!RESET_N),
  .locked(locked),
  .clk_in1(CLOCK_50)
 );

  assign reset = !locked;
  
  /* wires to connect between pipeline stages */ 
  
  /* Outputs of each stage */
  wire [`FE_latch_WIDTH-1:0] FE_latch_out; 
  wire [`DE_latch_WIDTH-1:0] DE_latch_out; 
  wire [`AGEX_latch_WIDTH-1:0] AGEX_latch_out; 
  wire [`MEM_latch_WIDTH-1:0] MEM_latch_out;

  /* Wires to pass data between stages within the same clock cycle */
  //wire [`from_DE_to_FE_WIDTH-1:0] from_DE_to_FE;
  wire [`from_AGEX_to_FE_WIDTH-1:0] from_AGEX_to_FE;
  //wire [`from_MEM_to_FE_WIDTH-1:0] from_MEM_to_FE;
  //wire [`from_WB_to_FE_WIDTH-1:0] from_WB_to_FE;

  //wire [`from_AGEX_to_DE_WIDTH-1:0] from_AGEX_to_DE;
  //wire [`from_MEM_to_DE_WIDTH-1:0] from_MEM_to_DE;
  wire [`from_WB_to_DE_WIDTH-1:0] from_WB_to_DE;

  //wire [`from_MEM_to_AGEX_WIDTH-1:0] from_MEM_to_AGEX;
  //wire [`from_WB_to_AGEX_WIDTH-1:0] from_WB_to_AGEX;

  //wire [`from_WB_to_MEM_WIDTH-1:0] from_WB_to_MEM;

  /* Wires for stall unit inputs and outputs */
  wire [`from_DE_to_stall_WIDTH-1:0] from_DE_to_stall;
  wire [`from_AGEX_to_stall_WIDTH-1:0] from_AGEX_to_stall;
  wire [`from_MEM_to_stall_WIDTH-1:0] from_MEM_to_stall;
  wire data_hazard;
  wire control_hazard;
  wire [`DBITS-1:0] forwarded_regval1;
  wire [`DBITS-1:0] forwarded_regval2;


STALL_UNIT my_stall_unit(
  .from_DE_to_stall(from_DE_to_stall),
  .from_AGEX_to_stall(from_AGEX_to_stall),
  .from_MEM_to_stall(from_MEM_to_stall),
  .data_hazard(data_hazard),
  .control_hazard(control_hazard),
  .regval1_DE_out(forwarded_regval1),
  .regval2_DE_out(forwarded_regval2));


FE_STAGE my_FE_stage(
    .clk(clk), 
    .reset(reset), 
    .from_AGEX_to_FE(from_AGEX_to_FE),
    .data_hazard(data_hazard),
    .control_hazard(control_hazard),
    .FE_latch_out(FE_latch_out)); 
                     
DE_STAGE my_DE_stage(
  .clk(clk),
  .reset(reset),
  .from_FE_latch(FE_latch_out),
  .from_WB_to_DE(from_WB_to_DE), 
  .data_hazard(data_hazard),
  .regval1_from_stall(forwarded_regval1),
  .regval2_from_stall(forwarded_regval2),
  .from_DE_to_stall(from_DE_to_stall),
  .DE_latch_out(DE_latch_out)
);

AGEX_STAGE my_AGEX_stage(
  .clk(clk),
  .reset(reset),
  .from_DE_latch(DE_latch_out),
  .AGEX_latch_out(AGEX_latch_out),
  .from_AGEX_to_FE(from_AGEX_to_FE),
  .from_AGEX_to_stall(from_AGEX_to_stall)
);

MEM_STAGE my_MEM_stage(
  .clk(clk),
  .reset(reset),
  .KEY(KEY),
  .from_AGEX_latch(AGEX_latch_out), 
  .MEM_latch_out(MEM_latch_out),
  .from_MEM_to_stall(from_MEM_to_stall)
);     


       
WB_STAGE my_WB_stage(
  .clk(clk),
  .reset(reset),  
  .from_MEM_latch(MEM_latch_out),
  .from_WB_to_DE(from_WB_to_DE),  
  .HEX0(HEX0),
  .HEX1(HEX1), 
  .LEDR(LEDR) 
);

endmodule









