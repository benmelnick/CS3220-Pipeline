 `include "VX_define.vh" 


module FE_STAGE(
  input clk,
  input reset,
  //input [`from_DE_to_FE_WIDTH-1:0] from_DE_to_FE,
  input [`from_AGEX_to_FE_WIDTH-1:0] from_AGEX_to_FE,   
  //input [`from_MEM_to_FE_WIDTH-1:0] from_MEM_to_FE,   
  //input [`from_WB_to_FE_WIDTH-1:0] from_WB_to_FE, 
  // inputs from the stall_unit module
  input data_hazard,
  input br_taken_BTB,
  input [`INSTBITS-1:0] pctarget_BTB,
  output[`FE_latch_WIDTH-1:0] FE_latch_out,
  output[`from_FE_to_BTB_WIDTH-1:0] from_FE_to_BTB
);


  // I-MEM
  (* ram_init_file = `IDMEMINITFILE *)
  reg [`DBITS-1:0] imem [`IMEMWORDS-1:0];
 
   initial begin
        $readmemh(`IDMEMINITFILE , imem);
  end

/* pipeline latch */ 
  reg [`FE_latch_WIDTH-1:0] FE_latch;  // FE latch 

  reg [`DBITS-1:0] PC_FE_latch; // PC latch in the FE stage   // you could use a part of FE_latch as a PC latch as well 
  
  wire [`INSTBITS-1:0] inst_FE;  // instruction value in the FE stage 

  wire [`DBITS-1:0] pcplus_FE;  // pc plus value in the FE stage 
  wire [`DBITS-1:0] nextpc_FE;  // next memory address to load into the PC on next rising clock edge (either PC+4 or BTB target)
  
  // branching info passed from AGEX stage
  wire mispredict_AGEX;
  wire[`DBITS-1:0] pctarget_AGEX; 
  assign {mispredict_AGEX, pctarget_AGEX} = from_AGEX_to_FE; 
  
  wire [`FE_latch_WIDTH-1:0] FE_latch_contents; 

  // Send PC to BTB to get branch prediction
  assign from_FE_to_BTB = {PC_FE_latch};
  
  // reading instruction from imem with CURRENT PC
  assign inst_FE = imem[PC_FE_latch[`IMEMADDRBITS-1:`IMEMWORDBITS]]; 
  
  // wire to send the FE latch contents to the DE stage 
  assign FE_latch_out = FE_latch; 

  // This is the value of "incremented PC", computed in the FE stage
  assign pcplus_FE = PC_FE_latch + `INSTSIZE;

  // Determine next address to fetch based on BTB results
  // If BTB hit, start fetching at predicted target in next clock cycle 
  assign nextpc_FE = br_taken_BTB ? pctarget_BTB : pcplus_FE;
   
  // local wire for holding output until next clock cycle and output latch is updated
  // holds instruction information for the CURRENT PC
  // the order of latch contents should be matched in the decode stage when we extract the contents. 
  assign FE_latch_contents = { 
                                inst_FE, 
                                PC_FE_latch, 
                                pcplus_FE, 
                                br_taken_BTB,
                                `BUS_CANARY_VALUE // for an error checking of bus encoding/decoding  
                                };
   
  // Logic for updating output latch and updating the next PC to fetch on each clock cycle
  // Includes logic for handling stalls due to data hazards
  always @ (posedge clk or posedge reset) begin
    if(reset) begin
      PC_FE_latch <= `STARTPC;
      FE_latch <= {`FE_latch_WIDTH{1'b0}};  
    end
    else begin
      if (data_hazard) begin
        // don't update the PC if there is a RAW data hazard in the pipeline - keeps same instruction in FE stage
        // don't update the output if there is a data hazard - keeps the same instruction in DE stage
        PC_FE_latch <= PC_FE_latch; 
        FE_latch <= FE_latch;
      end
      else if (mispredict_AGEX) begin
        // the pipeline previously mispredicted the direction of a branch
        // the direction and target was resolved in the AGEX stage
        // need to update the PC with the computed target and insert a bubble into the pipeline so the
        //   incorrect stream of instructions is not executed
        PC_FE_latch <= pctarget_AGEX;
        FE_latch <= {`FE_latch_WIDTH{1'b0}};
      end
      else begin
        // if no hazard or misprediction, continue execution with the next PC
        PC_FE_latch <= nextpc_FE;
        FE_latch <= FE_latch_contents;
      end
    end
  end
  

endmodule