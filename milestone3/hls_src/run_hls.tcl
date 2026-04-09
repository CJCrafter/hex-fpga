# run_hls.tcl: vitis HLS script for rollout kernel

open_project rollout_hls_proj
set_top rollout_hls
add_files rollout_hls.cpp
add_files -tb rollout_tb.cpp

open_solution "solution1"
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default

# run C simulation (verify correctness)
csim_design

# run C synthesis (get timing and resource estimates)
csynth_design

# generate reports
# cosim_design

exit
