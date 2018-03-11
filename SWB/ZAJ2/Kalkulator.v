// ZAD DOM 1
/*module LiczSW(KEY0, KEY1, KEY2, wejscie, wynik);
input [9:0] wejscie;
input KEY0;
input KEY1;
input KEY2;
wire [4:0] a = wejscie[4:0];
wire [4:0] b = wejscie[9:5];
output reg[9:0] wynik;
always
begin
	if(!KEY0)
		wynik = a + b;
	else if (!KEY1)
		wynik = a - b;
	else if (!KEY2)
		wynik = a * b;
end
endmodule

module Kalkulator1(KEY, SW, LEDR);
input [3:0] KEY;

input [9:0] SW;
output [9:0] LEDR;

LiczSW(KEY[0], KEY[1], KEY[2], SW, LEDR);
endmodule
*/
//ZAD DOM 2

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
end
endmodule	


module LiczHEX(KEY0, KEY1, KEY2, wejscie, wynik1, wynik2, wynik3, wynik4);
input [9:0] wejscie;
input KEY0;
input KEY1;
input KEY2;
wire [4:0] a = wejscie[4:0];
wire [4:0] b = wejscie[9:5];
output reg[3:0] wynik1;
output reg[3:0] wynik2;
output reg[3:0] wynik3;
output reg[3:0] wynik4;

always
begin
	if(!KEY0) 
	begin
		wynik1 = (a + b)%10;
		wynik2 = ((a + b)/10)%10;
		wynik3 = ((a + b)/100)%10;
		wynik4 = ((a + b)/1000)%10;
	end
	else if (!KEY1)
	begin
		wynik1 = (a - b)%10;
		wynik2 = ((a - b)/10)%10;
		wynik3 = ((a - b)/100)%10;
		wynik4 = ((a - b)/1000)%10;
	end	
	else if (!KEY2)
	begin
		wynik1 = (a * b)%10;
		wynik2 = ((a * b)/10)%10;
		wynik3 = ((a * b)/100)%10;
		wynik4 = ((a * b)/1000)%10;
	end
	else
	begin
		wynik1 = (a * b)/10000;
		wynik2 = (a * b)/10000;
		wynik3 = (a * b)/10000;
		wynik4 = (a * b)/10000;
	end
end	
endmodule


module Kalkulator(KEY, SW, LEDR, HEX0, HEX1, HEX2, HEX3);
output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;
output [6:0] HEX3;
input [3:0] KEY;

input [9:0] SW;
output [9:0] LEDR;

wire [3:0] cyfra1, cyfra2, cyfra3, cyfra4;

LiczHEX(KEY[0], KEY[1], KEY[2], SW, cyfra1, cyfra2, cyfra3, cyfra4);

DECtoHEX(cyfra1, HEX0);
DECtoHEX(cyfra2, HEX1);
DECtoHEX(cyfra3, HEX2);
DECtoHEX(cyfra4, HEX3);

endmodule