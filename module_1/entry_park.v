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
  ---  Module Name: entry_park 
  -----------------------------------------------------------*/
`timescale 1 ns/1 ns
module entry_park(
	entry,
	parking_capacity,
	park_number);
	input entry;
	input [7:0] parking_capacity;
	output [2:0] park_number;
	wire enable ;
	entry_checker ENTRY_CHECKER(entry , parking_capacity , enable) ;
	park_space_number PARK_SPACE_NUMBER(enable , parking_capacity , park_number) ;
endmodule
