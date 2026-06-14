# MMMC - amarra a biblioteca de timing as constraints (sintaxe Innovus 21.x)
create_library_set -name libs_typ \
    -timing {../pdks/freepdk-45nm/stdcells.lib}

create_constraint_mode -name constraints_typ \
    -sdc_files {../synth/alu_final.sdc}

create_delay_corner -name corner_typ \
    -library_set libs_typ

create_analysis_view -name view_typ \
    -constraint_mode constraints_typ \
    -delay_corner corner_typ

set_analysis_view -setup {view_typ} -hold {view_typ}
