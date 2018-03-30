/*
//ZADANIE 1
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


module CZAS(input [0:0] KEY, input CLOCK_50, output [6:0] HEX0, output [6:0]HEX1, output [6:0]HEX2, output [6:0]HEX3);
reg [25:0] licznik;
reg [15:0] liczsetne;
	
	DECtoHEX((liczsetne%10), HEX0);
	DECtoHEX(((liczsetne/10)%10), HEX1);
	DECtoHEX(((liczsetne/100)%10), HEX2);
	DECtoHEX(((liczsetne/1000)%10), HEX3);
	
always @(posedge CLOCK_50)
begin
	licznik = licznik + 1'b1;
	if(licznik%500000 == 0)
		liczsetne = liczsetne+1'b1;

	if(!KEY[0])
		liczsetne = 0;
end	
endmodule*/
/*module CZAS(input [3:0] KEY, input [0:0] SW, output [3:0] LEDR, input CLOCK_50);
reg [3:0] stan;
PomModule(KEY[0], KEY[1], KEY[2], KEY[3], stan, LEDR[0],LEDR[1],LEDR[2],LEDR[3]);
always @(posedge CLOCK_50)
begin	
	if (KEY[0] && (stan == 0))
		stan = 1;
	if (KEY[1] && (stan == 1))
		stan = 2;
	if (KEY[2] && (stan == 2))
		stan = 3;
	if (KEY[3] && (stan == 3))
		stan = 4;
	if(SW[0])
		stan = 0;
end
endmodule

module PomModule(input KEY0,input KEY1,input KEY2,input KEY3, input stanwej, output LEDR0, output LEDR1,output LEDR2, output LEDR3);

always
begin
	if(stanwej == 1)
	begin
		LEDR0 = 1'b 1;
	end
	if(stanwej == 2)
	begin
		LEDR1 = 1'b 1;
	end		
	if(stanwej == 3)
	begin
		LEDR2 = 1'b 1;
	end	
	if(stanwej == 4)
	begin
		LEDR3 = 1'b 1;
	end	
end
endmodule	*/

//PRACA DOMOWA

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


module CZAS(input [0:0] KEY, input CLOCK_50, output [6:0] HEX0, output [6:0]HEX1, output [6:0]HEX2, output [6:0]HEX3);
reg [25:0] licznik;
reg [15:0] liczsetne;
reg [15:0] liczpo3;
	
	DECtoHEX((liczpo3%10), HEX0);
	DECtoHEX(((liczpo3/10)%10), HEX1);
	DECtoHEX(((liczpo3/100)%10), HEX2);
	DECtoHEX(((liczpo3/1000)%10), HEX3);
	
always @(posedge CLOCK_50)
begin
	licznik = licznik + 1'b1;
	if(licznik%500000 == 0)
		liczsetne = liczsetne+1'b1;
	if(liczsetne > 1000)
		liczpo3 = liczpo3+1'b1;

end	
endmodule