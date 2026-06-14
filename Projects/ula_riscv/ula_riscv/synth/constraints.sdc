# ============================================================
# alu.sdc - Constraints para a ULA RISC-V
# Bloco puramente combinacional (sem registradores internos)
# ============================================================

# --- 1. CLOCK VIRTUAL ---
# Periodo de 3 ns => frequencia alvo de ~333 MHz.
set CLK_PER 3.0
create_clock -name virtual_clk -period $CLK_PER

# --- 2. INPUT DELAY ---
# Overhead pequeno (10%) reservado para a logica anterior.
set INPUT_DELAY [expr 0.10 * $CLK_PER]
set_input_delay $INPUT_DELAY -clock virtual_clk [get_ports a]
set_input_delay $INPUT_DELAY -clock virtual_clk [get_ports b]
set_input_delay $INPUT_DELAY -clock virtual_clk [get_ports alu_control]

# --- 3. OUTPUT DELAY ---
# Overhead pequeno (10%) reservado para a logica posterior.
set OUTPUT_DELAY [expr 0.10 * $CLK_PER]
set_output_delay $OUTPUT_DELAY -clock virtual_clk [get_ports result]
set_output_delay $OUTPUT_DELAY -clock virtual_clk [get_ports zero]

# --- 4. DRIVING CELL (Nangate 45nm) ---
set_driving_cell -lib_cell BUF_X1 [all_inputs]

# --- 5. OUTPUT LOAD ---
set_load 0.05 [all_outputs]

# --- 6. MAX DELAY (caminho combinacional) ---
set_max_delay [expr 0.80 * $CLK_PER] -from [all_inputs] -to [all_outputs]
