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
---  Module Name: controller
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module fsm(
	input [2:0] system_token,
	input request,
	input [7:0] TimeData,
	input RST,
	input CLK,
	input confirm,
	input [2:0] user_token,
	output reg RegP,
	output reg RegQ
	);
	
  reg [2:0] Prestate, Nextstate;
  parameter A = 3'b000 , B = 3'b001 , C = 3'b101 , E = 3'b111 , D = 3'b110;
  
   always @ (posedge CLK or negedge RST)
      if (~RST) Prestate = A;  
      else Prestate = Nextstate; 
   always @ (Prestate or confirm or request or TimeData or system_token or user_token)     
         case (Prestate)
            A: if (~request) Nextstate = A;
					 else Nextstate = B;	 
					 
            B: if(~request) Nextstate = A;  
					 else if (request & ~confirm) Nextstate = B;  
                else if(request & confirm & system_token == user_token) Nextstate = C;
                else if(request & confirm & system_token != user_token) Nextstate = E;

            C: if(~request) Nextstate = A;  
					 else if (request & ~confirm) Nextstate = C;  
					 else if (request & confirm) Nextstate = D;  
				
            E: if(~request) Nextstate = A; 
					 else Nextstate = E; 
				D: if( ~request)  Nextstate = A; 
					 else if(request & TimeData == 8'b1111xxxx) Nextstate = A;
					 else if(request & TimeData != 8'b1111xxxx)  Nextstate = A;
         endcase
	always @ (Prestate or confirm or request or TimeData)
         case (Prestate)
            A: begin
				RegP=1'b0 ;
				RegQ=1'b0 ;
				end
				
            B: begin
				RegP=1'b0 ;
				RegQ=1'b0;
				end
				
            C: begin
				RegP=1'b0 ;
				RegQ=1'b0;
				end
				
            E: begin
				RegP=1'b0 ;
				RegQ=1'b0 ;
				end
				
            D: begin
				if (TimeData[7] & TimeData[6] & TimeData[5] & TimeData[4]) begin RegP=1'b1; RegQ=1'b0; end
				    else begin RegP=1'b0; RegQ=1'b1; end
				 end
         endcase

endmodule

module controller(
	input [2:0] system_token,
	input request,
	input [7:0] TimeData,
	input reset,
	input clock,
	input confirm,
	input [2:0] user_token,
	output [7:0] data_Q,
	output [7:0] data_P
	);
  
  wire RegP;
  wire RegQ;
  
  fsm fsm1(system_token, request, TimeData, reset, clock, confirm, user_token, RegP, RegQ);
  register regP(TimeData, clock, reset, RegP, data_P);
  register regQ(TimeData, clock, reset, RegQ, data_Q);
  
endmodule
