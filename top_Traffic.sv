`timescale 1ns / 1ps

module Traffic_Top (
    input logic clk_100MHz, 
    input logic rst,        // Reset
    input logic TAORB,      // Trafic sensor
    output logic [5:0] led  // Led outputs
);

    logic clk_1Hz_wire;

    OneSecond_timer timer_inst (
        .clk_100MHz(clk_100MHz), 
        .reset(rst),
        .clk_onesec(clk_1Hz_wire) 
    );

    Traffic fsm_inst (
        .clk(clk_1Hz_wire),
        .rst(rst),
        .TAORB(TAORB),
        .led(led)
    );

endmodule