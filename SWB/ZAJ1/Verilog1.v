//zad dom 1
module DECtoHEX(wej, wyj);
input [3:0] wej;
output reg[7:0] wyj;

always
begin
	if(wej == 4'd 0)
		wyj = 7'b 1111111;
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
end
endmodule	
//zad dom2
module Projekt1(HEX0, HEX1, HEX2, HEX3);
output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [6:0] HEX3;

DECtoHEX(4'd 1, HEX3);
DECtoHEX(4'd 8, HEX2);
DECtoHEX(4'd 1, HEX1);
DECtoHEX(4'd 4, HEX0);
endmodule