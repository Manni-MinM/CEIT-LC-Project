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
module adder_subtractor4x4(
	A,
	B,
	cin,
	sum,
	cout);
	input cin ;
	input [3:0] A ;
	input [3:0] B ;
	output cout ;
	output [3:0] sum ;

	wire [4:0] carry ;
	assign carry[0] = cin ;
	full_adder ADDER0(A[0] , B[0] ^ cin , carry[0] , carry[1] , sum[0]) ;
	full_adder ADDER1(A[1] , B[1] ^ cin , carry[1] , carry[2] , sum[1]) ;
	full_adder ADDER2(A[2] , B[2] ^ cin , carry[2] , carry[3] , sum[2]) ;
	full_adder ADDER3(A[3] , B[3] ^ cin , carry[3] , carry[4] , sum[3]) ;
	assign cout = cin ^ carry[4] ;
endmodule