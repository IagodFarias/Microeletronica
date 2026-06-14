# ============================================================
# innovus.tcl - Sintese fisica da ULA RISC-V (Nangate 45nm)
# ============================================================

set PDK ../pdks/freepdk-45nm

# --- 1. SETUP: carregar LEFs, netlist e biblioteca ---
set init_lef_file "$PDK/rtk-tech.lef $PDK/stdcells.lef"
set init_verilog  "../synth/alu_netlist.v"
set init_top_cell "alu"
set init_mmmc_file "mmmc.tcl"
set init_pwr_net VDD
set init_gnd_net VSS
init_design

# --- 2. FLOORPLAN: define area do nucleo ---
# aspect ratio 1.0 (quadrado), densidade 70%,
# margem de 5 um entre o nucleo e a borda (para os aneis de power).
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O \
          -r 1.0 0.70 5 5 5 5

# --- 3. POWER PLANNING ---
# Conecta os pinos globais VDD/VSS das celulas
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *

# Cria os aneis de alimentacao ao redor do nucleo
addRing -nets {VDD VSS} -type core_rings \
        -layer {top metal9 bottom metal9 left metal10 right metal10} \
        -width 0.8 -spacing 0.8 -offset 0.5

# Distribui as trilhas (stripes) de power pelo nucleo
sroute -nets {VDD VSS}

# --- 4. PLACEMENT ---
setPlaceMode -place_global_place_io_pins true
place_design

# Otimizacao pos-placement
optDesign -preCTS

# --- 5. ROUTING ---
# Como o bloco e combinacional (sem clock real), pulamos o CTS
# e vamos direto para o roteamento dos sinais.
routeDesign

# Otimizacao pos-routing
#optDesign -postRoute

# --- 6. RELATORIOS E SAIDA ---
report_timing > timing_postroute.txt
report_power  > power_postroute.txt
summaryReport -outfile summary_postroute.txt

# Salva o design final e exporta
saveDesign alu_final.enc
defOut -routing alu_final.def
streamOut alu_final.gds -mapFile $PDK/rtk-stream-out.map -merge "$PDK/stdcells.gds"

