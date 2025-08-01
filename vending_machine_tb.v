`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2025 22:52:59
// Design Name: 
// Module Name: vending_machine_tb
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


module vending_machine_tb;
reg clk, reset;
reg coin_5,coin_10;
wire dispense;
wire [1:0] current_state;

vending_machine uut(
.clk(clk) , .reset(reset), .coin_5(coin_5),.coin_10(coin_10),
        .dispense(dispense),.current_state(current_state)
    );
    initial clk=0;
    always #5 clk=~clk;
    initial begin
    reset = 1; coin_5 = 0; coin_10 = 0;
    #10 reset = 0;

    // Insert coins at various times up to 1000 ns or more
    #10 coin_5 = 1; #10 coin_5 = 0;
    #20 coin_10 = 1; #10 coin_10 = 0;
    
    #20 coin_5 = 1; #10 coin_5 = 0;
    #50 coin_5 = 1; #10 coin_5 = 0;
    #50 coin_5 = 1; #10 coin_5 = 0;
    
    #50 coin_10 = 1; #10 coin_10 = 0;

    
    #500 coin_5 = 1; #10 coin_5 = 0;
    

    #400 $finish;
end

initial begin
    $monitor("Time=%t  clk=%b reset=%b coin_5=%b coin_10=%b state=%b dispense=%b",
             $time, clk, reset, coin_5, coin_10,current_state, dispense);
end


    
endmodule
