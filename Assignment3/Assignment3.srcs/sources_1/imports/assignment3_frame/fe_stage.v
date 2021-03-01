 `include "VX_define.vh" 


module FE_STAGE(
  input clk,
  input reset,
  input [`from_DE_to_FE_WIDTH-1:0] from_DE_to_FE,
  input [`from_AGEX_to_FE_WIDTH-1:0] from_AGEX_to_FE,   
  input [`from_MEM_to_FE_WIDTH-1:0] from_MEM_to_FE,   
  input [`from_WB_to_FE_WIDTH-1:0] from_WB_to_FE, 
  // inputs from the stall_unit module
  input data_hazard,
  input control_hazard,
  output[`FE_latch_WIDTH-1:0] FE_latch_out
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
  
  // branching info passed from AGEX stage
  wire br_taken_AGEX;
  wire[`DBITS-1:0] pctarget_AGEX; 
  assign {br_taken_AGEX, pctarget_AGEX} = from_AGEX_to_FE; 
  
  wire [`FE_latch_WIDTH-1:0] FE_latch_contents; 
  
  // reading instruction from imem with CURRENT PC
  assign inst_FE = imem[PC_FE_latch[`IMEMADDRBITS-1:`IMEMWORDBITS]]; 
  
  // wire to send the FE latch contents to the DE stage 
  assign FE_latch_out = FE_latch; 

  // This is the value of "incremented PC", computed in the FE stage
  assign pcplus_FE = PC_FE_latch + `INSTSIZE;
   
  // local wire for holding output until next clock cycle and output latch is updated
  // holds instruction information for the CURRENT PC
  // the order of latch contents should be matched in the decode stage when we extract the contents. 
  assign FE_latch_contents = { 
                                inst_FE, 
                                PC_FE_latch, 
                                pcplus_FE, // please feel free to add more signals such as valid bits etc. 
                                // if you add more bits here, please increase the width of latch in VX_define.vh 
                                `BUS_CANARY_VALUE // for an error checking of bus encoding/decoding  
                                };
   
  // Logic for updating output latch and computing the next PC to fetch on each clock cycle
  // Includes logic for handling stalls due to branches and data hazards
  // Branches incur 1 bubble when not taken, 2 bubbles when taken (need an extra cycle to actually update the PC before we can read from imem)
  always @ (posedge clk or posedge reset) begin
    if(reset) begin
      PC_FE_latch <= `STARTPC;
      FE_latch <= {`FE_latch_WIDTH{1'b0}};  
    end
    else begin
      if (control_hazard || data_hazard) begin
        // don't update the PC if either an unresolved branch or RAW hazard in the pipeline
        PC_FE_latch <= PC_FE_latch; 
        if (control_hazard)
          FE_latch <= {`FE_latch_WIDTH{1'b0}};  // insert a bubble into next stage
        else
          FE_latch <= FE_latch; // don't update the output if there is a data hazard - keeps the same instruction in DE
      end
      else if (br_taken_AGEX) begin
        // no hazards and the branch was taken
        PC_FE_latch <= pctarget_AGEX; // update the PC
        // need to send another bubble to DE since FE_latch_contents is currently using the incorrect PC
        // after PC gets updated, FE_latch_contents will be correct on next cycle and will move to DE
        FE_latch <= {`FE_latch_WIDTH{1'b0}};
      end
      else begin
        // always increment PC to next instruction in sequence unless told otherwise by stall unit
        // move current instruction to next stage in the pipeline
        PC_FE_latch <= pcplus_FE;
        FE_latch <= FE_latch_contents;
      end
    end
  end
  

endmodule