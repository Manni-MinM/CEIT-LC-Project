/*--  *******************************************************
  --  Computer Architecture Course, Laboratory Sources 
  --  Amirkabir University of Technology (Tehran Polytechnic)
  --  Department of Computer Engineering (CE-AUT)
  --  https://ce[dot]aut[dot]ac[dot]ir
  --  *******************************************************
  --  All Rights reserved (C) 2021-2022
  --  *******************************************************
  --  Student ID  : 9931054 & 9931066 
  --  Student Name: Manni Moghimi & Amirhossein Iravanimanesh
  --  Student Mail: 
  --  *******************************************************
  --  Additional Comments:
  --
  --*/

/*-----------------------------------------------------------
  ---  Module Name: calculate_new_capacity
  -----------------------------------------------------------*/
`timescale 1 ns/1 ns
module calculate_new_capacity(
	park_location,
	parking_capacity,
	new_capacity);
	input [7:0] park_location;
	input [7:0] parking_capacity;
	output [7:0] new_capacity;
	assign new_capacity = parking_capacity ^ park_location ;
endmodule