option = arr_menu_options[choice]

if(option == "Options"){
	last_menu = id
	submenu = instance_create_layer(x,y, "GameObjects", obj_menu)
	instance_deactivate_object(last_menu)
	submenu.last_menu = last_menu
	
	with(submenu){
		arr_menu_options[1] = "Master Volume"
		arr_menu_options[2] = "Music Volume"
		arr_menu_options[3] = "Effects Volume"
		arr_menu_options[0] = "Toggle Fullscreen"
		arr_menu_options[4] = "Toggle Battery"
		arr_menu_options[5] = "Return"
		
		options_number = array_length(arr_menu_options)
	}
}
//Fullscreen
if(option == "Toggle Fullscreen"){
	var isFullscreen = window_get_fullscreen()
	window_set_fullscreen(!isFullscreen)
}
if(option == "Return"){
	instance_destroy()
	instance_activate_object(last_menu)
}
if(option == "Continue"){
	instance_destroy(obj_menu)
	instance_activate_all()
}
if(option == "Main Menu"){
    save_game();
	room_goto(r_menu)
}
if(option == "Exit"){
	save_game();
	game_end()
}
if(option == "Leave"){
	game_end()
}
if(option == "New Game"){
	room_goto_next()
}
if(option == "Load Game"){
	load_game()
}