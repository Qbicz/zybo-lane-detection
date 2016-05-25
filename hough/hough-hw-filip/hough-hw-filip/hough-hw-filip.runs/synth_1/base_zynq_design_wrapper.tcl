# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.cache/wt} [current_project]
set_property parent.project_path {E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files -quiet {{E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.runs/Mnozarka_synth_1/Mnozarka.dcp}}
set_property used_in_implementation false [get_files {{E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.runs/Mnozarka_synth_1/Mnozarka.dcp}}]
add_files {{E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.srcs/sources_1/bd/base_zynq_design/base_zynq_design.bd}}
set_property used_in_implementation false [get_files -all {{E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.srcs/sources_1/bd/base_zynq_design/base_zynq_design_ooc.xdc}}]
set_property is_locked true [get_files {{E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.srcs/sources_1/bd/base_zynq_design/base_zynq_design.bd}}]

read_verilog -library xil_defaultlib {{E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.srcs/sources_1/new/myHough.v}}
read_vhdl -library xil_defaultlib {{E:/Teczka/8 semestr/PSRA/zybo-lane-detection/hough/hough-hw-filip/hough-hw-filip/hough-hw-filip.srcs/sources_1/bd/base_zynq_design/hdl/base_zynq_design_wrapper.vhd}}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top base_zynq_design_wrapper -part xc7z010clg400-1
write_checkpoint -noxdef base_zynq_design_wrapper.dcp
catch { report_utilization -file base_zynq_design_wrapper_utilization_synth.rpt -pb base_zynq_design_wrapper_utilization_synth.pb }