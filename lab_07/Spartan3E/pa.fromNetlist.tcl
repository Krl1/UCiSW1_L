
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Spartan3E -dir "C:/Users/lab/Desktop/lab_06/Spartan3E/planAhead_run_2" -part xc3s500efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/lab/Desktop/lab_06/Spartan3E/zad_1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/lab/Desktop/lab_06/Spartan3E} }
set_property target_constrs_file "C:/Users/lab/Desktop/lab_06/Spartan3E/LCD.ucf" [current_fileset -constrset]
add_files [list {GenIO.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {PS2_USB_SDC.ucf}] -fileset [get_property constrset [current_run]]
add_files [list {LCD.ucf}] -fileset [get_property constrset [current_run]]
link_design
