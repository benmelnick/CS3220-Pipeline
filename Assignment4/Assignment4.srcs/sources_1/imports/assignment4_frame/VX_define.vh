`ifndef VX_DEFINE
`define VX_DEFINE

  `define DBITS     32
  `define INSTSIZE  32'd4
  `define INSTBITS  32
  `define REGNOBITS  4
  `define REGWORDS  (1 << `REGNOBITS)
  `define IMMBITS   16
  `define STARTPC   32'h100
  
  //Memory mapped IO
  `define ADDRHEX   32'hFFFFF000
  `define ADDRLEDR  32'hFFFFF020
  `define ADDRKEY   32'hFFFFF080
  `define ADDRSW    32'hFFFFF090

  

  // [NOTICE] please note that both imem and dmem use the SAME "IDMEMINITFILE".
  // you need to change this line to change which test file to read 
  `define IDMEMINITFILE  "testall.mem"
 

 
  
  `define IMEMADDRBITS  16
  `define IMEMWORDBITS  2
  `define IMEMWORDS	  (1 << (`IMEMADDRBITS - `IMEMWORDBITS))
  `define DMEMADDRBITS  16
  `define DMEMWORDBITS  2
  `define DMEMWORDS	  (1 << (`DMEMADDRBITS - `DMEMWORDBITS))
   
  `define OP1BITS   6
  `define OP1_ALUR  6'b000000
  `define OP1_BEQ   6'b001000
  `define OP1_BLT   6'b001001
  `define OP1_BLE   6'b001010
  `define OP1_BNE   6'b001011
  `define OP1_JAL   6'b001100
  `define OP1_LW    6'b010010
  `define OP1_SW    6'b011010
  `define OP1_ADDI  6'b100000
  `define OP1_ANDI  6'b100100
  `define OP1_ORI   6'b100101
  `define OP1_XORI  6'b100110
  
  // Add `defines for secondary opcode values 
  /* OP2 */
  `define OP2BITS   8
  `define OP2_EQ    8'b00001000
  `define OP2_LT    8'b00001001
  `define OP2_LE    8'b00001010
  `define OP2_NE    8'b00001011
  `define OP2_ADD   8'b00100000
  `define OP2_AND   8'b00100100
  `define OP2_OR    8'b00100101
  `define OP2_XOR   8'b00100110
  `define OP2_SUB   8'b00101000
  `define OP2_NAND  8'b00101100
  `define OP2_NOR   8'b00101101
  `define OP2_NXOR  8'b00101110
  `define OP2_RSHF  8'b00110000
  `define OP2_LSHF  8'b00110001
  
  
  `define HEXBITS   24
  `define LEDRBITS  10
  `define KEYBITS  4





/** please update the following define with your own values */ 

  
  `define FE_latch_WIDTH  (`INSTBITS+`DBITS+`DBITS+ 1 + `BUS_CANARY_WIDTH)
  `define DE_latch_WIDTH  (`INSTBITS+`DBITS+`DBITS+`OP1BITS+`OP2BITS+`DBITS+`DBITS+`DBITS + 1 + 1 + 1 + 1 + 1+ `REGNOBITS + 1 + `BUS_CANARY_WIDTH)

  `define AGEX_latch_WIDTH  (`INSTBITS+`DBITS+`DBITS + `DBITS + 1 + 1 + 1 + `REGNOBITS + 1 + 1 + 1 + `DBITS + `BUS_CANARY_WIDTH)
  `define MEM_latch_WIDTH   (`INSTBITS+`DBITS+`DBITS +`DBITS + `DBITS + 1 + 1 + `REGNOBITS + 1 + 1 + 1 + `DBITS + `BUS_CANARY_WIDTH)

  `define from_DE_to_FE_WIDTH  1 
  `define from_AGEX_to_FE_WIDTH (1 + `DBITS) // send a "branch mispredicted" signal and the target PC 
  `define from_MEM_to_FE_WIDTH 4
  `define from_WB_to_FE_WIDTH 4

  `define from_AGEX_to_DE_WIDTH 4 
  `define from_MEM_to_DE_WIDTH 4 
  `define from_WB_to_DE_WIDTH  (`REGNOBITS + `DBITS + 1) 

  `define from_MEM_to_AGEX_WIDTH  4 
  `define from_WB_to_AGEX_WIDTH  4 

  `define from_WB_to_MEM_WIDTH 4 

  // widths for wires from pipeline stages to stall unit
  // DE stage sends source register numbers, op1
  `define from_DE_to_stall_WIDTH (`REGNOBITS + `REGNOBITS + `OP1BITS)
  // AGEX and MEM stages send destination register number and signal indicating if register is being written
  `define from_AGEX_to_stall_WIDTH (`OP1BITS + `REGNOBITS + 1 + `DBITS)
  `define from_MEM_to_stall_WIDTH (`REGNOBITS + 1 + `DBITS)

  // stall unit sends two 1-bit signals indicating if the corresponding forwarded value should be used
  `define from_stall_to_DE_WIDTH (1 + 1 + `DBITS + `DBITS)

  `define BUS_CANARY_WIDTH 4 
  `define BUS_CANARY_VALUE 4'b1111 

   // TODO: determine sizes
  `define BTB_ENTRY_BITS (`INSTBITS + `INSTBITS)  // each BTB entry stores the PC of the entry and the target PC
  `define BTB_INDEX_BITS 4  // number of bits in PC used to index BTB
  `define BTB_SIZE (1 << `BTB_INDEX_BITS) // number of rows in the BTB
  `define BTB_ASSOCIATIVITY 1 // 1 entry/row --> direct mapped cache
  `define BTB_LINE_BITS (`BTB_ASSOCIATIVITY * `BTB_ENTRY_BITS)  // number of bits in each row

  // FE stage sends current PC to BTB
  `define from_FE_to_BTB_WIDTH (`INSTBITS)
  // WB stage sends PC, branch direction + PC target (computed in AGEX stage) to BTB
  // also need a bit to indicate if the instruction is actually a branch
  `define from_WB_to_BTB_WIDTH (`INSTBITS + 1 + 1 + 1 + `INSTBITS)  
`endif 