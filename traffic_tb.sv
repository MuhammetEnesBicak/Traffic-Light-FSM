`timescale 1ns / 1ps

module traffic_tb();

    logic clk;
    logic rst;
    logic TAORB;
    logic [5:0] led;

    // Test edilecek modül DUT
    Traffic dut (
        .clk(clk),
        .rst(rst),
        .TAORB(TAORB),
        .led(led)
    );
	
    // (period = 20ns)
    always #10 clk = ~clk;

    initial begin
        // 1.
        clk = 0;
        rst = 1;     // Sistemi başlangıçta resetle
        TAORB = 1;  
        
        $display("Simulasyon Basladi...");
        $monitor("Zaman=%0t | Reset=%b | TAORB=%b | LED(LA_LB)=%b", $time, rst, TAORB, led);
        // 2.
        #25; 
        rst = 0;
        #40;
        // 3.
        TAORB = 0;
        #150; 
        // 4.
        #40;
        // 5.
        TAORB = 1;
        #150;
        // 6.
        $display("Simulasyon Basariyla Tamamlandi.");
        $finish;
    end

endmodule