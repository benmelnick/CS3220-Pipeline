 `include "VX_define.vh" 

module MEM_STAGE(
  input clk,
  input reset,
  input  [3:0] KEY,
  //input [`from_WB_to_MEM_WIDTH-1:0] from_WB_to_MEM,  
  input [`AGEX_latch_WIDTH-1:0] from_AGEX_latch, 
  output[`MEM_latch_WIDTH-1:0] MEM_latch_out,
  //output[`from_MEM_to_FE_WIDTH-1:0] from_MEM_to_FE,
  //output[`from_MEM_to_DE_WIDTH-1:0] from_MEM_to_DE,
  //output[`from_WB_to_AGEX_WIDTH-1:0] from_MEM_to_AGEX,
  output[`from_MEM_to_stall_WIDTH-1:0] from_MEM_to_stall
);
  // D-MEM
  (* ram_init_file = `IDMEMINITFILE *)
  reg [`DBITS-1:0] dmem[`DMEMWORDS-1:0];
 
 // DMEM and IMEM should contains the same contents 
 initial begin
     $readmemh(`IDMEMINITFILE , dmem);
  end
  
  
  reg [`MEM_latch_WIDTH-1:0] MEM_latch; 


  wire[`MEM_latch_WIDTH-1:0] MEM_latch_contents; 

  wire [`DBITS-1:0] rd_val_MEM; 


  wire [`DBITS-1:0] memaddr_MEM; 
  
  wire [`INSTBITS-1:0] inst_MEM; 
  wire [`DBITS-1:0] PC_MEM;
  wire [`DBITS-1:0] aluout_MEM; 
  wire [`DBITS-1:0] regval2_MEM;

  wire is_br_MEM;
  wire br_taken_MEM;
  wire [`DBITS-1:0] pctarget_MEM;
  
  wire rd_mem_MEM;
  wire wr_mem_MEM;
  wire wr_reg_MEM;
  wire [`REGNOBITS-1:0] wregno_MEM;

  wire [`DBITS-1:0 ] regval_MEM; // value actually written back to register in WB stage

  wire [`BUS_CANARY_WIDTH-1:0] bus_canary_MEM;

  // Memory address is computed by ALU
  assign memaddr_MEM = aluout_MEM;

  // Read from D-MEM  (read and write D-MEM code are completed for you )
  assign rd_val_MEM = (memaddr_MEM == `ADDRKEY) ? {{(`DBITS-`KEYBITS){1'b0}}, ~KEY} :
  								dmem[memaddr_MEM[`DMEMADDRBITS-1:`DMEMWORDBITS]];

  // Determine which value will actually be writtten back to registers in WB stage
  assign regval_MEM = rd_mem_MEM ? rd_val_MEM : aluout_MEM;
  
 // Write to D-MEM
  always @ (posedge clk) begin
    if(wr_mem_MEM)
      dmem[memaddr_MEM[`DMEMADDRBITS-1:`DMEMWORDBITS]] <= regval2_MEM;
  end
 
    
  assign MEM_latch_out = MEM_latch; 

  assign {
                              inst_MEM,
                              PC_MEM,
                              aluout_MEM,
                              regval2_MEM,
                              rd_mem_MEM,
                              wr_mem_MEM,
                              wr_reg_MEM,
                              wregno_MEM,
                              is_br_MEM,
                              br_taken_MEM,
                              pctarget_MEM,
                              bus_canary_MEM
                                } = from_AGEX_latch;  

  // send register info to stall unit
  assign from_MEM_to_stall = {wregno_MEM, wr_reg_MEM};
 
  assign MEM_latch_contents = {
                              inst_MEM,
                              PC_MEM,
                              memaddr_MEM,
                              regval_MEM,
                              regval2_MEM, 
                              wr_mem_MEM,
                              wr_reg_MEM,
                              wregno_MEM,    
                              is_br_MEM,
                              br_taken_MEM,
                              pctarget_MEM,    
                            bus_canary_MEM                   
  };
 
  always @ (posedge clk or posedge reset) begin
    if(reset) begin
        MEM_latch <={`MEM_latch_WIDTH{1'b0}}; 
    end
    else 
     begin 
        MEM_latch <= MEM_latch_contents;
     end 
    
    
  end

endmodule
