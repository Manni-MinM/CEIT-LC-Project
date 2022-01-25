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
  ---  Module Name: exit_parking_lot
  -----------------------------------------------------------*/
`timescale 1 ns/1 ns
module exit_parking_lot(
	park_number,
	exit,
	park_location);
	input [2:0] park_number;
	input exit;
	output [7:0] park_location;
	assign park_location = (~exit ? 8'b00000000 : 
							park_number == 3'b111 ? 8'b10000000 :
							park_number == 3'b110 ? 8'b01000000 :
							park_number == 3'b101 ? 8'b00100000 :
							park_number == 3'b100 ? 8'b00010000 :
							park_number == 3'b011 ? 8'b00001000 :
							park_number == 3'b010 ? 8'b00000100 :
							park_number == 3'b001 ? 8'b00000010 :
							park_number == 3'b000 ? 8'b00000001 : 8'bzzzzzzzz) ;
endmodule