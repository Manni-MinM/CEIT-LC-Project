/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 9931066 & 9931054
--  Student Name: Amirhossein Iravanimanesh & Manni Moghimi
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: register
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module register(
	input [7:0] D,
	input CLK, 
	input RST,
	input en,
	output reg [7:0] Q
	);
	always @(posedge CLK)
		if (~RST)
		begin
			Q <= 8'b0;
		end else if (en)
		begin
			Q <= D;
		end
endmodule