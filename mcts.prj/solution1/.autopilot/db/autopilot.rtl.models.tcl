set SynModuleInfo {
  {SRCNAME dut_Pipeline_VITIS_LOOP_17_1 MODELNAME dut_Pipeline_VITIS_LOOP_17_1 RTLNAME dut_dut_Pipeline_VITIS_LOOP_17_1
    SUBMODULES {
      {MODELNAME dut_bitset_49ns_49ns_6ns_1ns_49_1_1 RTLNAME dut_bitset_49ns_49ns_6ns_1ns_49_1_1 BINDTYPE op TYPE bitset IMPL auto}
      {MODELNAME dut_flow_control_loop_pipe_sequential_init RTLNAME dut_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dut_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dut_Pipeline_VITIS_LOOP_27_3 MODELNAME dut_Pipeline_VITIS_LOOP_27_3 RTLNAME dut_dut_Pipeline_VITIS_LOOP_27_3}
  {SRCNAME search_Pipeline_VITIS_LOOP_42_1 MODELNAME search_Pipeline_VITIS_LOOP_42_1 RTLNAME dut_search_Pipeline_VITIS_LOOP_42_1
    SUBMODULES {
      {MODELNAME dut_bitselect_1ns_49ns_6ns_1_1_1 RTLNAME dut_bitselect_1ns_49ns_6ns_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
    }
  }
  {SRCNAME {sqrt_fixed<32, 16>} MODELNAME sqrt_fixed_32_16_s RTLNAME dut_sqrt_fixed_32_16_s}
  {SRCNAME forward_Pipeline_VITIS_LOOP_140_2 MODELNAME forward_Pipeline_VITIS_LOOP_140_2 RTLNAME dut_forward_Pipeline_VITIS_LOOP_140_2
    SUBMODULES {
      {MODELNAME dut_sdiv_32ns_32ns_32_36_1 RTLNAME dut_sdiv_32ns_32ns_32_36_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME dut_mac_muladd_24ns_16ns_36s_41_4_1 RTLNAME dut_mac_muladd_24ns_16ns_36s_41_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME forward_Pipeline_VITIS_LOOP_73_1 MODELNAME forward_Pipeline_VITIS_LOOP_73_1 RTLNAME dut_forward_Pipeline_VITIS_LOOP_73_1}
  {SRCNAME forward_Pipeline_VITIS_LOOP_114_14 MODELNAME forward_Pipeline_VITIS_LOOP_114_14 RTLNAME dut_forward_Pipeline_VITIS_LOOP_114_14}
  {SRCNAME forward_Pipeline_VITIS_LOOP_114_1 MODELNAME forward_Pipeline_VITIS_LOOP_114_1 RTLNAME dut_forward_Pipeline_VITIS_LOOP_114_1}
  {SRCNAME rollout_Pipeline_VITIS_LOOP_114_1 MODELNAME rollout_Pipeline_VITIS_LOOP_114_1 RTLNAME dut_rollout_Pipeline_VITIS_LOOP_114_1}
  {SRCNAME rollout_Pipeline_VITIS_LOOP_114_11 MODELNAME rollout_Pipeline_VITIS_LOOP_114_11 RTLNAME dut_rollout_Pipeline_VITIS_LOOP_114_11}
  {SRCNAME rollout_Pipeline_VITIS_LOOP_114_12 MODELNAME rollout_Pipeline_VITIS_LOOP_114_12 RTLNAME dut_rollout_Pipeline_VITIS_LOOP_114_12}
  {SRCNAME rollout_Pipeline_VITIS_LOOP_114_13 MODELNAME rollout_Pipeline_VITIS_LOOP_114_13 RTLNAME dut_rollout_Pipeline_VITIS_LOOP_114_13}
  {SRCNAME rollout_Pipeline_VITIS_LOOP_230_3 MODELNAME rollout_Pipeline_VITIS_LOOP_230_3 RTLNAME dut_rollout_Pipeline_VITIS_LOOP_230_3}
  {SRCNAME rollout MODELNAME rollout RTLNAME dut_rollout
    SUBMODULES {
      {MODELNAME dut_urem_64ns_64ns_32_68_seq_1 RTLNAME dut_urem_64ns_64ns_32_68_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 67 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME forward_Pipeline_VITIS_LOOP_114_15 MODELNAME forward_Pipeline_VITIS_LOOP_114_15 RTLNAME dut_forward_Pipeline_VITIS_LOOP_114_15}
  {SRCNAME forward_Pipeline_VITIS_LOOP_114_16 MODELNAME forward_Pipeline_VITIS_LOOP_114_16 RTLNAME dut_forward_Pipeline_VITIS_LOOP_114_16}
  {SRCNAME {log<32, 16>} MODELNAME log_32_16_s RTLNAME dut_log_32_16_s
    SUBMODULES {
      {MODELNAME dut_mul_36ns_6ns_42_1_1 RTLNAME dut_mul_36ns_6ns_42_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dut_mul_6s_23ns_27_1_1 RTLNAME dut_mul_6s_23ns_27_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dut_mul_9ns_9ns_18_1_1 RTLNAME dut_mul_9ns_9ns_18_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dut_mac_mulsub_24ns_4ns_29ns_29_4_1 RTLNAME dut_mac_mulsub_24ns_4ns_29ns_29_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME dut_log_32_16_s_log_apfixed_reduce_log_inverse_lut_table_array_ROM_AUTO_1R RTLNAME dut_log_32_16_s_log_apfixed_reduce_log_inverse_lut_table_array_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_log_32_16_s_log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array_ROM_AUTO_1R RTLNAME dut_log_32_16_s_log_apfixed_reduce_log0_lut_table_ap_fixed_0_5_64_array_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_log_32_16_s_log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array_ROM_AUTO_1R RTLNAME dut_log_32_16_s_log_apfixed_reduce_log_lut_table_ap_fixed_4_4_16_array_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME forward_Pipeline_VITIS_LOOP_259_1 MODELNAME forward_Pipeline_VITIS_LOOP_259_1 RTLNAME dut_forward_Pipeline_VITIS_LOOP_259_1
    SUBMODULES {
      {MODELNAME dut_sdiv_20ns_4ns_20_24_1 RTLNAME dut_sdiv_20ns_4ns_20_24_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 23 ALLOW_PRAGMA 1}
      {MODELNAME dut_mul_20s_3ns_20_1_1 RTLNAME dut_mul_20s_3ns_20_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dut_sdiv_24s_32ns_20_28_1 RTLNAME dut_sdiv_24s_32ns_20_28_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 27 ALLOW_PRAGMA 1}
      {MODELNAME dut_mac_mulsub_20s_3ns_20s_23_4_1 RTLNAME dut_mac_mulsub_20s_3ns_20s_23_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME forward MODELNAME forward RTLNAME dut_forward}
  {SRCNAME search_Pipeline_VITIS_LOOP_27_1 MODELNAME search_Pipeline_VITIS_LOOP_27_1 RTLNAME dut_search_Pipeline_VITIS_LOOP_27_1}
  {SRCNAME search MODELNAME search RTLNAME dut_search}
  {SRCNAME dut MODELNAME dut RTLNAME dut IS_TOP 1
    SUBMODULES {
      {MODELNAME dut_searcher_visitCounts_RAM_AUTO_1R1W RTLNAME dut_searcher_visitCounts_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_searcher_meanQ_RAM_AUTO_1R1W RTLNAME dut_searcher_meanQ_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_searcher_terminals_RAM_AUTO_1R1W RTLNAME dut_searcher_terminals_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_searcher_childActions_RAM_AUTO_1R1W RTLNAME dut_searcher_childActions_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_searcher_triedMask_RAM_AUTO_1R1W RTLNAME dut_searcher_triedMask_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
