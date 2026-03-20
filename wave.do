onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /traffic_tb/dut/clk
add wave -noupdate -label rst /traffic_tb/dut/rst
add wave -noupdate -label TAORB /traffic_tb/dut/TAORB
add wave -noupdate -label led -radix binary -childformat {{{/traffic_tb/dut/led[5]} -radix binary} {{/traffic_tb/dut/led[4]} -radix binary} {{/traffic_tb/dut/led[3]} -radix binary} {{/traffic_tb/dut/led[2]} -radix binary} {{/traffic_tb/dut/led[1]} -radix binary} {{/traffic_tb/dut/led[0]} -radix binary}} -radixshowbase 0 -subitemconfig {{/traffic_tb/dut/led[5]} {-radix binary -radixshowbase 0} {/traffic_tb/dut/led[4]} {-radix binary -radixshowbase 0} {/traffic_tb/dut/led[3]} {-radix binary -radixshowbase 0} {/traffic_tb/dut/led[2]} {-radix binary -radixshowbase 0} {/traffic_tb/dut/led[1]} {-radix binary -radixshowbase 0} {/traffic_tb/dut/led[0]} {-radix binary -radixshowbase 0}} /traffic_tb/dut/led
add wave -noupdate -label current_state /traffic_tb/dut/current_state
add wave -noupdate -label next_state -radixshowbase 0 /traffic_tb/dut/next_state
add wave -noupdate -label timer /traffic_tb/dut/timer
add wave -noupdate -label next_timer /traffic_tb/dut/next_timer
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {425250 ps}
