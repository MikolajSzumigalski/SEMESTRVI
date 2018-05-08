//Zadanie 1
/*
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

module LOSOWE(input [0:0]KEY, input CLOCK_50, output [6:0]HEX0);
reg [4:0]random;
reg [4:0]next_random;

DECtoHEX(random%4, HEX0);

always 
begin
if(!KEY[0])
	begin
		next_random[4:1] = random[3:0];
		next_random[0] = (random[4] + random[2] + 1) %2;
	end
	
	else next_random = random;
end	


always @(posedge CLOCK_50)	
begin
	random[4:0] <= next_random[4:0];
end
endmodule
*/

//Zad1 domowe

module LOSOWE(input [9:0]SW, input CLOCK_50, input [3:0] KEY,output reg [7:0]LEDR, output [6:0]HEX0, output [6:0]HEX1, output [6:0]HEX2, output [6:0]HEX3);
reg [25:0] licznik;
reg [15:0] liczsetne;
reg [15:0] liczpo2;
reg [25:0] licznikX;
reg [15:0] liczsetneX;
integer wartownik;
integer wartownikX;
reg [4:0] random, wylosowana;
reg [4:0] next_random;

initial LEDR = 0;
initial licznikX = 0;
initial licznik =0;
initial liczsetne = 0;
initial liczsetneX = 0;
initial random = 5;
always @(posedge CLOCK_50)
begin
	random[4:0] <= next_random[4:0];
	if(SW[9])
		begin
			licznik <= licznik + 1'b1;
			if(licznik%500000 == 0)
			begin
				liczsetne <= liczsetne+1'b1;
				licznik <= 0;
			end
			if(liczsetne == 200 && licznik%500000 == 0)
			begin
				wylosowana <= random;
				if(wylosowana%4 == 0)
					LEDR[1] <= 1;
				else if(wylosowana%4 == 1)
					LEDR[5] <= 1;
				else if(wylosowana%4 == 2)
					LEDR[3] <= 1;
				else if(wylosowana%4 == 3)
					LEDR[7] <= 1;	
			end
		end
end

always 
begin
	next_random[4:1] = random[3:0];
	next_random[0] = (random[4] + random[2] + 1) %2;
end

endmodule

//Zad2 domowe