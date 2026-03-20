`timescale 1ns / 1ps

module OneSecond_timer(
    input logic clk_100MHz,
    input logic reset,
    output logic clk_onesec
);
    
    logic [25:0] r_count = 0;
    logic r_half = 0;
    
    always_ff @(posedge clk_100MHz or posedge reset) begin
        if(reset) begin
            r_count <= 26'b0;
            r_half <= 0;
        end
        else begin
            // 100 MHz icin yarım saniye = 49,999,999'a kadar say
            if(r_count == 49999999) begin 
                r_count <= 26'b0;
                r_half <= ~r_half;
            end
            else begin
                r_count <= r_count + 1;
            end
        end
    end

    assign clk_onesec = r_half;
    
endmodule