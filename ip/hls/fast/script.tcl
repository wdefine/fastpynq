############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fast
set_top fast_accel

add_files xf_axis_config.h
add_files xf_config_params.h
add_files xf_fast_config.h
add_files xf_fast_accel.cpp -cflags "-I../vitis_lib/vision/L1/include -D__SDSVHLS__ -std=c++0x"

open_solution "solution1"
set_part {zynq} -tool vivado
create_clock -period 10 -name default
set_clock_uncertainty 27.0%

csynth_design
export_design -format ip_catalog -description "Fast corner detection IP" -display_name "fast_accel2"
exit
