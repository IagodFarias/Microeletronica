set_db common_ui false
# --- 1. Setup das Bibliotecas ---
# Substitua o caminho abaixo pelo caminho real do seu PDK no servidor
set_attr library {/home/mateusmaia45/Documentos/candece_iago/projetos_iago/ula_riscv/pdks/freepdk-45nm/stdcells.lib}

# --- 2. Leitura do Design ---
read_hdl -sv ../rtl/alu.sv
elaborate alu

# --- 3. Carregar Constraints ---
read_sdc ./constraints.sdc

# --- 4. Síntese e Mapeamento ---
syn_generic
syn_map
syn_opt

# --- 5. Reportes (Essencial para analisar se deu certo) ---
report_timing > timing_report.txt
report_area > area_report.txt
report_power > power_report.txt

# --- 6. Exportar Netlist e SDC Final ---
write_hdl > alu_netlist.v
write_sdc > alu_final.sdc

exit
