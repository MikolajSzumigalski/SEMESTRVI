module ProjektX (KEY, LEDR, SW, HEX0, HEX1, HEX2, HEX3);
input[3:0] KEY;
output[9:0] LEDR;
output[6:0] HEX0;
output[6:0] HEX1;
output[6:0] HEX2;
output[6:0] HEX3;
input[9:8] SW;
//zad1.1
assign LEDR[0] = KEY[0];

//zad1.2
assign LEDR[1] = KEY[0] && KEY[1];

//zad1.3
assign LEDR[2] = !KEY[0] || !KEY[1];

//zad1.4
assign LEDR[6:4] = !KEY[0] + !KEY[1] + !KEY[2] + !KEY[3];

//zad1.5
assign LEDR[8] = SW[8];
assign LEDR[9] = SW[9];

//zad2
assign HEX3[6:0] = 7'b 1111001;
assign HEX2[6:0] = 7'b 0000000;
assign HEX1[6:0] = 7'b 1111001;
assign HEX0[6:0] = 7'b 0011001;

endmodule