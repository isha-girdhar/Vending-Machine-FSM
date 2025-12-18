`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 21:40:30
// Design Name: 
// Module Name: vending_machine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vending_machine( input clk,
input reset,
input coin_5,
input coin_10,
output dispense,
output[1:0] current_state

    );
    parameter S0=0, S1=1, S2=2, S3=3;
    reg[1:0]state, next_state;
   
    always@(posedge clk or posedge reset) begin
    if(reset)
    state<=S0;
    else
    state<=next_state;
    end
    always@(*) begin
    case(state)
    S0: next_state=coin_5?S1:coin_10?S2:S0;
    S1: next_state=coin_5?S2:coin_10?S3:S1;
    S2: next_state=(coin_5||coin_10)?S3:S2;
    S3: next_state=S0;
    default:next_state= S0;
    endcase
    end
    
    assign dispense=((state==S2)&&(coin_5||coin_10))||(state==S3);
    assign current_state=state;
endmodule
