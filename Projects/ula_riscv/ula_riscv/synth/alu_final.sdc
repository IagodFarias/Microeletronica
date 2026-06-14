# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.10-p002_1 on Sat Jun 13 20:06:29 -03 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1000ps

# Set the current design
current_design alu

create_clock -name "virtual_clk" -period 3.0 -waveform {0.0 1.5} 
set_load -pin_load 0.1 [get_ports {result[31]}]
set_load -pin_load 0.1 [get_ports {result[30]}]
set_load -pin_load 0.1 [get_ports {result[29]}]
set_load -pin_load 0.1 [get_ports {result[28]}]
set_load -pin_load 0.1 [get_ports {result[27]}]
set_load -pin_load 0.1 [get_ports {result[26]}]
set_load -pin_load 0.1 [get_ports {result[25]}]
set_load -pin_load 0.1 [get_ports {result[24]}]
set_load -pin_load 0.1 [get_ports {result[23]}]
set_load -pin_load 0.1 [get_ports {result[22]}]
set_load -pin_load 0.1 [get_ports {result[21]}]
set_load -pin_load 0.1 [get_ports {result[20]}]
set_load -pin_load 0.1 [get_ports {result[19]}]
set_load -pin_load 0.1 [get_ports {result[18]}]
set_load -pin_load 0.1 [get_ports {result[17]}]
set_load -pin_load 0.1 [get_ports {result[16]}]
set_load -pin_load 0.1 [get_ports {result[15]}]
set_load -pin_load 0.1 [get_ports {result[14]}]
set_load -pin_load 0.1 [get_ports {result[13]}]
set_load -pin_load 0.1 [get_ports {result[12]}]
set_load -pin_load 0.1 [get_ports {result[11]}]
set_load -pin_load 0.1 [get_ports {result[10]}]
set_load -pin_load 0.1 [get_ports {result[9]}]
set_load -pin_load 0.1 [get_ports {result[8]}]
set_load -pin_load 0.1 [get_ports {result[7]}]
set_load -pin_load 0.1 [get_ports {result[6]}]
set_load -pin_load 0.1 [get_ports {result[5]}]
set_load -pin_load 0.1 [get_ports {result[4]}]
set_load -pin_load 0.1 [get_ports {result[3]}]
set_load -pin_load 0.1 [get_ports {result[2]}]
set_load -pin_load 0.1 [get_ports {result[1]}]
set_load -pin_load 0.1 [get_ports {result[0]}]
set_load -pin_load 0.1 [get_ports zero]
set_max_delay 2.4 -from [list \
  [get_ports {a[31]}]  \
  [get_ports {a[30]}]  \
  [get_ports {a[29]}]  \
  [get_ports {a[28]}]  \
  [get_ports {a[27]}]  \
  [get_ports {a[26]}]  \
  [get_ports {a[25]}]  \
  [get_ports {a[24]}]  \
  [get_ports {a[23]}]  \
  [get_ports {a[22]}]  \
  [get_ports {a[21]}]  \
  [get_ports {a[20]}]  \
  [get_ports {a[19]}]  \
  [get_ports {a[18]}]  \
  [get_ports {a[17]}]  \
  [get_ports {a[16]}]  \
  [get_ports {a[15]}]  \
  [get_ports {a[14]}]  \
  [get_ports {a[13]}]  \
  [get_ports {a[12]}]  \
  [get_ports {a[11]}]  \
  [get_ports {a[10]}]  \
  [get_ports {a[9]}]  \
  [get_ports {a[8]}]  \
  [get_ports {a[7]}]  \
  [get_ports {a[6]}]  \
  [get_ports {a[5]}]  \
  [get_ports {a[4]}]  \
  [get_ports {a[3]}]  \
  [get_ports {a[2]}]  \
  [get_ports {a[1]}]  \
  [get_ports {a[0]}]  \
  [get_ports {b[31]}]  \
  [get_ports {b[30]}]  \
  [get_ports {b[29]}]  \
  [get_ports {b[28]}]  \
  [get_ports {b[27]}]  \
  [get_ports {b[26]}]  \
  [get_ports {b[25]}]  \
  [get_ports {b[24]}]  \
  [get_ports {b[23]}]  \
  [get_ports {b[22]}]  \
  [get_ports {b[21]}]  \
  [get_ports {b[20]}]  \
  [get_ports {b[19]}]  \
  [get_ports {b[18]}]  \
  [get_ports {b[17]}]  \
  [get_ports {b[16]}]  \
  [get_ports {b[15]}]  \
  [get_ports {b[14]}]  \
  [get_ports {b[13]}]  \
  [get_ports {b[12]}]  \
  [get_ports {b[11]}]  \
  [get_ports {b[10]}]  \
  [get_ports {b[9]}]  \
  [get_ports {b[8]}]  \
  [get_ports {b[7]}]  \
  [get_ports {b[6]}]  \
  [get_ports {b[5]}]  \
  [get_ports {b[4]}]  \
  [get_ports {b[3]}]  \
  [get_ports {b[2]}]  \
  [get_ports {b[1]}]  \
  [get_ports {b[0]}]  \
  [get_ports {alu_control[3]}]  \
  [get_ports {alu_control[2]}]  \
  [get_ports {alu_control[1]}]  \
  [get_ports {alu_control[0]}] ] -to [list \
  [get_ports {result[31]}]  \
  [get_ports {result[30]}]  \
  [get_ports {result[29]}]  \
  [get_ports {result[28]}]  \
  [get_ports {result[27]}]  \
  [get_ports {result[26]}]  \
  [get_ports {result[25]}]  \
  [get_ports {result[24]}]  \
  [get_ports {result[23]}]  \
  [get_ports {result[22]}]  \
  [get_ports {result[21]}]  \
  [get_ports {result[20]}]  \
  [get_ports {result[19]}]  \
  [get_ports {result[18]}]  \
  [get_ports {result[17]}]  \
  [get_ports {result[16]}]  \
  [get_ports {result[15]}]  \
  [get_ports {result[14]}]  \
  [get_ports {result[13]}]  \
  [get_ports {result[12]}]  \
  [get_ports {result[11]}]  \
  [get_ports {result[10]}]  \
  [get_ports {result[9]}]  \
  [get_ports {result[8]}]  \
  [get_ports {result[7]}]  \
  [get_ports {result[6]}]  \
  [get_ports {result[5]}]  \
  [get_ports {result[4]}]  \
  [get_ports {result[3]}]  \
  [get_ports {result[2]}]  \
  [get_ports {result[1]}]  \
  [get_ports {result[0]}]  \
  [get_ports zero] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[31]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[30]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[29]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[28]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[27]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[26]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[25]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[24]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[23]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[22]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[21]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[20]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[19]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[18]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[17]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[16]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[15]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[14]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[13]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[12]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[11]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[10]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[9]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[8]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[7]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[6]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[5]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[4]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[3]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[2]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[1]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {a[0]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[31]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[30]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[29]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[28]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[27]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[26]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[25]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[24]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[23]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[22]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[21]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[20]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[19]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[18]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[17]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[16]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[15]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[14]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[13]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[12]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[11]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[10]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[9]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[8]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[7]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[6]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[5]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[4]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[3]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[2]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[1]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {b[0]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {alu_control[3]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {alu_control[2]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {alu_control[1]}]
set_input_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {alu_control[0]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[31]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[30]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[29]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[28]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[27]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[26]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[25]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[24]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[23]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[22]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[21]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[20]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[19]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[18]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[17]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[16]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[15]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[14]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[13]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[12]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[11]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[10]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[9]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[8]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[7]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[6]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[5]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[4]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[3]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[2]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[1]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports {result[0]}]
set_output_delay -clock [get_clocks virtual_clk] -add_delay 0.3 [get_ports zero]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[31]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[30]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[29]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[28]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[27]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[26]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[25]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[24]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[23]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[22]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[21]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[20]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[19]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[18]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[17]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[16]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[15]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[14]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[13]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[12]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[11]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[10]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[9]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[8]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[7]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[6]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[5]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[4]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[3]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[2]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[1]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {a[0]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[31]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[30]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[29]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[28]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[27]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[26]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[25]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[24]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[23]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[22]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[21]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[20]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[19]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[18]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[17]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[16]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[15]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[14]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[13]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[12]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[11]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[10]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[9]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[8]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[7]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[6]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[5]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[4]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[3]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[2]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[1]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {b[0]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {alu_control[3]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {alu_control[2]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {alu_control[1]}]
set_driving_cell -lib_cell BUF_X1 -library NangateOpenCellLibrary -pin "Z" [get_ports {alu_control[0]}]
set_wire_load_mode "enclosed"
