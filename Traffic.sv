`timescale 1ns / 1ps

module Traffic (
    input  logic clk, 
    input  logic rst,   // Reset
    input  logic TAORB, // Traffic on A (1) or on B (0)
    output logic [5:0] led // led[5:3] -> LA (R,Y,G), led[2:0] -> LB (R,Y,G)
);

    // state enumaration
    typedef enum logic [1:0] {
        S0 = 2'b00,  // LA Green, LB Red
        S1 = 2'b01,  // LA Yellow, LB Red
        S2 = 2'b10,  // LA Red, LB Green
        S3 = 2'b11   // LA Red, LB Yellow
    } state_t;

    state_t current_state, next_state;
    logic [2:0] timer, next_timer; 


    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            current_state <= S0;
            timer         <= 3'b000;
        end else begin
            current_state <= next_state;
            timer         <= next_timer;
        end
    end

endmodule