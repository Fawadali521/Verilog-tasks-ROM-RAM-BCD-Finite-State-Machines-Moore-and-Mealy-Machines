

proc hello_example {args} {

	# Need to destroy the button, in case this is 
	# not the first time. But do a "catch" since the button
	# might not exist yet.
	catch {destroy .top}

	# Make a toplevel, that is outside of the VSIM main window.
	toplevel .top

	#
	# Put a message on the standard output 
	# when the button is pressed.
	#
	button .top.b -text "Hello World" \
		-command {puts "Hello World"}
	pack .top.b

	puts "Hello World!"
	foreach arg $args {
		puts "$arg"
	}
}

