/*--  *******************************************************
  --  Computer Architecture Course, Laboratory Sources 
  --  Amirkabir University of Technology (Tehran Polytechnic)
  --  Department of Computer Engineering (CE-AUT)
  --  https://ce[dot]aut[dot]ac[dot]ir
  --  *******************************************************
  --  All Rights reserved (C) 2021-2022
  --  *******************************************************
  --  Student ID  : 
  --  Student Name: 
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
	park_location);
	input [2:0] park_number;
	output [7:0] park_location;
	assign park_location = (park_number == 3'b000 ? 8'b11111110 :
							park_number == 3'b001 ? 8'b11111101 :
							park_number == 3'b010 ? 8'b11111011 :
							park_number == 3'b011 ? 8'b11110111 :
							park_number == 3'b100 ? 8'b11101111 :
							park_number == 3'b101 ? 8'b11011111 :
							park_number == 3'b110 ? 8'b10111111 : 8'b01111111) ;
endmodule
