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
  ---  Module Name: exit_park 
  -----------------------------------------------------------*/
`timescale 1 ns/1 ns
module exit_park(
	exit,
	token,
	pattern,
	park_location);
	input exit;
	input [2:0] token;
	input [2:0] pattern;
	output [7:0] park_location;
	wire Ddata[2:0] ;
	decrypt DECRYPT(exit , token , pattern , Ddata) ;
	exit_parking_lot EXIT_PARKING_LOT(Ddata , park_location) ;
endmodule
