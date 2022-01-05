/*--  *******************************************************
  --  Computer Architecture Course, Laboratory Sources 
  --  Amirkabir University of Technology (Tehran Polytechnic)
  --  Department of Computer Engineering (CE-AUT)
  --  https://ce[dot]aut[dot]ac[dot]ir
  --  *******************************************************
  --  All Rights reserved (C) 2021-2022
  --  *******************************************************
  --  Student ID  : 993154 & 9931066
  --  Student Name: Manni Moghimi & Amirhossein Iravanimanesh
  --  Student Mail: 
  --  *******************************************************
  --  Additional Comments:
  --
  --*/

/*-----------------------------------------------------------
  ---  Module Name: full_adder
  -----------------------------------------------------------*/
`timescale 1 ns/1 ns
module full_adder(
	A,
	B,
	cin,
	cout,
	sum);
	input A ;
	input B ;
	input cin ;
	output sum ;
	output cout ;
	
	assign sum = A ^ B ^ cin ;
	assign cout = (A & B) | (B & cin) | (A & cin) ;
endmodule