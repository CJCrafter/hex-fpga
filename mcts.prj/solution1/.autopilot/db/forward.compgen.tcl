# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name this_visitCounts \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_visitCounts \
    op interface \
    ports { this_visitCounts_address0 { O 13 vector } this_visitCounts_ce0 { O 1 bit } this_visitCounts_we0 { O 1 bit } this_visitCounts_d0 { O 32 vector } this_visitCounts_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_visitCounts'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name this_meanQ \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_meanQ \
    op interface \
    ports { this_meanQ_address0 { O 13 vector } this_meanQ_ce0 { O 1 bit } this_meanQ_we0 { O 1 bit } this_meanQ_d0 { O 20 vector } this_meanQ_q0 { I 20 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_meanQ'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name this_parents \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_parents \
    op interface \
    ports { this_parents_address0 { O 13 vector } this_parents_ce0 { O 1 bit } this_parents_we0 { O 1 bit } this_parents_d0 { O 32 vector } this_parents_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_parents'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name this_firstChilds \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_firstChilds \
    op interface \
    ports { this_firstChilds_address0 { O 13 vector } this_firstChilds_ce0 { O 1 bit } this_firstChilds_we0 { O 1 bit } this_firstChilds_d0 { O 32 vector } this_firstChilds_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_firstChilds'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name this_numChildren \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_numChildren \
    op interface \
    ports { this_numChildren_address0 { O 13 vector } this_numChildren_ce0 { O 1 bit } this_numChildren_we0 { O 1 bit } this_numChildren_d0 { O 32 vector } this_numChildren_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_numChildren'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name this_nextSiblings \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_nextSiblings \
    op interface \
    ports { this_nextSiblings_address0 { O 13 vector } this_nextSiblings_ce0 { O 1 bit } this_nextSiblings_we0 { O 1 bit } this_nextSiblings_d0 { O 32 vector } this_nextSiblings_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_nextSiblings'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name this_numLegalActions \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_numLegalActions \
    op interface \
    ports { this_numLegalActions_address0 { O 13 vector } this_numLegalActions_ce0 { O 1 bit } this_numLegalActions_we0 { O 1 bit } this_numLegalActions_d0 { O 32 vector } this_numLegalActions_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_numLegalActions'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name this_terminals \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_terminals \
    op interface \
    ports { this_terminals_address0 { O 13 vector } this_terminals_ce0 { O 1 bit } this_terminals_we0 { O 1 bit } this_terminals_d0 { O 1 vector } this_terminals_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_terminals'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name this_childActions \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_childActions \
    op interface \
    ports { this_childActions_address0 { O 13 vector } this_childActions_ce0 { O 1 bit } this_childActions_we0 { O 1 bit } this_childActions_d0 { O 6 vector } this_childActions_q0 { I 6 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_childActions'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name this_triedMask \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_triedMask \
    op interface \
    ports { this_triedMask_address0 { O 13 vector } this_triedMask_ce0 { O 1 bit } this_triedMask_we0 { O 1 bit } this_triedMask_d0 { O 49 vector } this_triedMask_q0 { I 49 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_triedMask'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name this_isREDs \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_isREDs \
    op interface \
    ports { this_isREDs_address0 { O 13 vector } this_isREDs_ce0 { O 1 bit } this_isREDs_we0 { O 1 bit } this_isREDs_d0 { O 1 vector } this_isREDs_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_isREDs'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name this_logVisitCounts \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename this_logVisitCounts \
    op interface \
    ports { this_logVisitCounts_address0 { O 13 vector } this_logVisitCounts_ce0 { O 1 bit } this_logVisitCounts_we0 { O 1 bit } this_logVisitCounts_d0 { O 32 vector } this_logVisitCounts_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'this_logVisitCounts'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name this_nextFree_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_nextFree_read \
    op interface \
    ports { this_nextFree_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name this_rng_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_this_rng_read \
    op interface \
    ports { this_rng_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name gameState_legalActionMap \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gameState_legalActionMap \
    op interface \
    ports { gameState_legalActionMap { I 49 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name gameState_hexGame_isPlayer1Turn_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gameState_hexGame_isPlayer1Turn_s \
    op interface \
    ports { gameState_hexGame_isPlayer1Turn_s { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name gameState_hexGame_lastMove_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gameState_hexGame_lastMove_s \
    op interface \
    ports { gameState_hexGame_lastMove_s { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name gameState_hexGame_player1_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gameState_hexGame_player1_s \
    op interface \
    ports { gameState_hexGame_player1_s { I 49 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name gameState_hexGame_player2_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gameState_hexGame_player2_s \
    op interface \
    ports { gameState_hexGame_player2_s { I 49 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


