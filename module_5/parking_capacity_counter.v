/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : Amirhossein Iravanimanesh & Manni Moghimi
--  Student Name: 9931066 & 9931054
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: parking_capacity_counter
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module parking_capacity_counter(
 new_capacity,
 parked,
 empty);
	input [7:0] new_capacity;
	output [3:0] parked;
	output [3:0] empty;
	
	wire [8:0] cout;
	wire [3:0] empty1;
	wire [3:0] empty2;
	wire [3:0] empty3;
	wire [3:0] empty4;
	wire [3:0] empty5;
	wire [3:0] empty6;
	wire [3:0] empty7;
	wire [3:0] empty8;
	
	assign empty1 = 4'b0000;

	adder_subtractor4x1 ADD1(new_capacity[0], empty1, 1'b0, empty2, cout[0]);
	adder_subtractor4x1 ADD2(new_capacity[1], empty2, 1'b0, empty3, cout[1]);
	adder_subtractor4x1 ADD3(new_capacity[2], empty3, 1'b0, empty4, cout[2]);
	adder_subtractor4x1 ADD4(new_capacity[3], empty4, 1'b0, empty5, cout[3]);
	adder_subtractor4x1 ADD5(new_capacity[4], empty5, 1'b0, empty6, cout[4]);
	adder_subtractor4x1 ADD6(new_capacity[5], empty6, 1'b0, empty7, cout[5]);
	adder_subtractor4x1 ADD7(new_capacity[6], empty7, 1'b0, empty8, cout[6]);
	adder_subtractor4x1 ADD8(new_capacity[7], empty8, 1'b0, empty, cout[7]);
	
	adder_subtractor4x4 SUB1(4'b1000, empty, 1'b1, parked, cout[8]); 
endmodule