if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name libs_typ\
   -timing\
    [list ${::IMEX::libVar}/mmmc/stdcells.lib]
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name corner_typ\
   -library_set libs_typ
create_constraint_mode -name constraints_typ\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name view_typ -constraint_mode constraints_typ -delay_corner corner_typ
set_analysis_view -setup [list view_typ] -hold [list view_typ]
