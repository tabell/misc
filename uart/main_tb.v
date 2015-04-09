`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:45:18 04/08/2015
// Design Name:   main
// Module Name:   /home/alex/verilog/misc/uart/main_tb.v
// Project Name:  uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module main_tb;

	// Inputs
	reg user_clock;
	reg rst;
	reg usb_rs232_rxd;
	reg send_trigger;

	// Outputs
	wire usb_rs232_txd;
	wire gpio_led1;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.user_clock(user_clock), 
		.rst(rst), 
		.usb_rs232_rxd(usb_rs232_rxd), 
		.send_trigger(send_trigger), 
		.usb_rs232_txd(usb_rs232_txd), 
		.gpio_led1(gpio_led1)
	);

	initial begin
		// Initialize Inputs
		user_clock = 0;
		rst = 0;
		usb_rs232_rxd = 0;
		send_trigger = 0;

		// Wait 100 ns for global reset to finish
		// usb_rs232_rxd <= 0'bZ;
		#100;
		send_trigger <= 1;
		 #800 send_trigger <= 0;
        
		// Add stimulus here

	end
	always 
		#10 user_clock <= ~user_clock;
      
endmodule

