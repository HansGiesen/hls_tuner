
/scratch/safe/SDSoC/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_cholesky_top_top glbl -prj cholesky_top.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/scratch/safe/SDSoC/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s cholesky_top 
/scratch/safe/SDSoC/Vivado/2019.1/bin/xsim --noieeewarnings cholesky_top -tclbatch cholesky_top.tcl

