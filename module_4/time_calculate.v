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
  ---  Module Name: time_calculate
  -----------------------------------------------------------*/
`timescale 1 ns/1 ns
module time_calculate(
	time_out,
	time_in,
	time_total);
	input [7:0] time_out;
	input [7:0] time_in;
	output [7:0] time_total;
	wire cout ;
	adder_subtractor ADDSUB(time_out , time_in , 1'b1 , time_total , cout) ;
endmodule