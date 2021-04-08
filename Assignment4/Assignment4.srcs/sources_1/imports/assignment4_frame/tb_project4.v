`timescale 1ns/1ns

module tb_project4();

reg CLOCK_50;
reg RESET_N;
reg [3:0] KEY;

wire [6:0] HEX0;
wire [6:0] HEX1;
wire [9:0] LEDR;

reg [9:0] last_LEDR;
reg [6:0] last_HEX0;
reg [6:0] last_HEX1;

project4_frame myprj(
	.CLOCK_50(CLOCK_50),
	.RESET_N(RESET_N),
	.KEY(KEY),
	.HEX0(HEX0),
	.HEX1(HEX1),
	.LEDR(LEDR)
);

integer i; 

initial begin	
	CLOCK_50 = 0;
	RESET_N = 0;
	KEY = 4'b1111;;
	//SW = 10'h0;
	#2 RESET_N = 1;
	i = 0;
	#10000 KEY = 0; 
	#300 KEY = 4'b1111; 
	last_LEDR = {10{1'b0}};
	last_HEX0 = 6'h0D;
	last_HEX1 = 6'h0A;
end

always #10  CLOCK_50 = ~CLOCK_50;

   always @(posedge CLOCK_50)
   begin 
        i = i+1;
        if (last_LEDR != LEDR) begin
        //if (!(i% 100)) begin  
            $display ("i:%d sim_clk=%b KEY=%b rest:%b hex1:%h hex0:%h ledr:%b",i, CLOCK_50, KEY, RESET_N, HEX1, HEX0, LEDR);
            last_LEDR = LEDR;
            last_HEX0 = HEX0;
            last_HEX1 = HEX1;
            // please use this results for only test 
            //if (HEX0 == 'h01) begin 
            // $display ("congratulations! you passed test cases if you are testing test[1-5]");
            // end   
         end
         else if (last_LEDR == {10{1'b0}} && last_HEX0 != HEX0 && last_HEX1 != HEX1) begin
            $display ("i:%d sim_clk=%b KEY=%b rest:%b hex1:%h hex0:%h ledr:%b",i, CLOCK_50, KEY, RESET_N, HEX1, HEX0, LEDR);
            last_LEDR = LEDR;
            last_HEX0 = HEX0;
            last_HEX1 = HEX1;
         end
    end
endmodule
