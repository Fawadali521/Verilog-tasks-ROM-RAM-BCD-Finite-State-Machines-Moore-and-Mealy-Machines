# open all the windows
view *

if {$entity == "counter"} {

    # set up a clock on the CLK input
	force clk 1 50, 0 100 -r 100

    # list all the signals 
	add list *

} elseif {$entity == "test_adder_structural"} {

    # list all the top-level signals in hex
	add list -hex /*

}
