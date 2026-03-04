onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bit4_alu_tb/en
add wave -noupdate /bit4_alu_tb/a
add wave -noupdate /bit4_alu_tb/b
add wave -noupdate /bit4_alu_tb/opcode
add wave -noupdate /bit4_alu_tb/out
add wave -noupdate /bit4_alu_tb/cout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {19775 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {12460 ps} {118100 ps}
