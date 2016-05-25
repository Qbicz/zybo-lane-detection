# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.cache/wt [current_project]
set_property parent.project_path /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zybo:part0:1.0 [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_ip /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka.xci
set_property is_locked true [get_files /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top Mnozarka -part xc7z010clg400-1 -mode out_of_context
rename_ref -prefix_all Mnozarka_
write_checkpoint -noxdef Mnozarka.dcp
catch { report_utilization -file Mnozarka_utilization_synth.rpt -pb Mnozarka_utilization_synth.pb }
if { [catch {
  file copy -force /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.runs/Mnozarka_synth_1/Mnozarka.dcp /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.ip_user_files/ip/Mnozarka]} {
  catch { 
    file copy -force /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka_stub.v /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.ip_user_files/ip/Mnozarka
  }
}

if {[file isdir /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.ip_user_files/ip/Mnozarka]} {
  catch { 
    file copy -force /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.srcs/sources_1/ip/Mnozarka/Mnozarka_stub.vhdl /home/lsriw/psra/kubicz/Hough_Filip/Hough_Filip.ip_user_files/ip/Mnozarka
  }
}
