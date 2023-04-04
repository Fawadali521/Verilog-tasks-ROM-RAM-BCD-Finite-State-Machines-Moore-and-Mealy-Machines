# Run Simulation
set before_run [clock seconds]
run 30000000
set after_run [clock seconds]

# Calculate Run Time
set total_run [expr $after_run - $before_run]
set minutes_run [expr $total_run / 60]
set seconds_run [expr $total_run - [expr $minutes_run * 60] ]

#Display Values
echo "Total Run Time  " $minutes_run " Minutes " $seconds_run " Seconds"

# File Display Bug Fix
#source fixsel.tcl 

