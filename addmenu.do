view signals
set myglobalvar(.signals:one) 0
set myglobalvar(.signals:two) 1
proc AddMyMenus {wname} {
    global myglobalvar
    set cmd1 "echo my_own_thing $wname"
    set cmd2 "echo my_to_upper $wname"
    set cmd3 "echo my_to_lower $wname"

#              WindowName      Menu               MenuItem label            Command
#              ----------      ----               --------------------      -------
add_menu       $wname          mine
add_menuitem   $wname          mine              "Do My Own Thing..."       $cmd1
add_separator  $wname          mine              ;#------------------       --------
add_submenu    $wname          mine               changeCase
add_menuitem   $wname          mine.changeCase    "To Upper"                $cmd2
add_menuitem   $wname          mine.changeCase    "To Lower"                $cmd3
add_submenu    $wname          mine                vars
add_menucb     $wname          mine.vars          "Feature One"            -variable myglobalvar($wname:one) -onvalue 1 -offvalue 0 -indicatoron 1
}
AddMyMenus .signals

