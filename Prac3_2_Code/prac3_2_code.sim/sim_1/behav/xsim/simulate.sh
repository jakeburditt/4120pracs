#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2021.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Thu May 05 09:33:25 SAST 2022
# SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
#
# IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim testBench_behav -key {Behavioral:sim_1:Functional:testBench} -tclbatch testBench.tcl -view /home/BRDJAK002/eee4120F/EEE4120F/Prac3/Prac3_2_Code/testBench_behav.wcfg -log simulate.log"
xsim testBench_behav -key {Behavioral:sim_1:Functional:testBench} -tclbatch testBench.tcl -view /home/BRDJAK002/eee4120F/EEE4120F/Prac3/Prac3_2_Code/testBench_behav.wcfg -log simulate.log

