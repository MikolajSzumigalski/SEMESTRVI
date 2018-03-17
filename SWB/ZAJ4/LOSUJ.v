module DECtoHEX(wej, wyj);
input [3:0] wej;
output reg[7:0] wyj;

always
begin
	if(wej == 4'd 0)
		wyj = 7'b 1000000;
	else if (wej == 4'd 1)
		wyj = 7'b 1111001;
	else if (wej == 4'd 2)
		wyj = 7'b 0100100;
	else if (wej == 4'd 3)
		wyj = 7'b 0110000;
	else if (wej == 4'd 4)
		wyj = 7'b 0011001;
	else if (wej == 4'd 5)
		wyj = 7'b 0010010;
	else if (wej == 4'd 6)
		wyj = 7'b 0000010;
	else if (wej == 4'd 7)
		wyj = 7'b 1111000;
	else if (wej == 4'd 8)
		wyj = 7'b 0000000;
	else if (wej == 4'd 9)
		wyj = 7'b 0010000;
	else if (wej == 4'd 10)
		wyj = 7'b 0111111;
end
endmodule	

module LOSUJ( CLOCK_50, KEY, HEX0 );
input CLOCK_50;
input [0:0] KEY;
output [6:0] HEX0;

reg r_reg, r_next;
always @(posedge CLOCK_50)
r_reg <= r_next;

always @*
if (SW[0]) r_next = SW[1];
else
 r_next = r_reg;
always @*
DECtoHEX(r_reg, HEX0);


endmodule