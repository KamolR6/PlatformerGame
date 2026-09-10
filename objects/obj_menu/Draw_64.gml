if(main_menu == false  && surface_exists(pause))
{
	draw_surface(pause,0,0)
}

var width = view_wport[0]
var height = view_hport[0]
max_length = 1

for (i = 0; i < array_length(arr_menu_options); i+=1) {

    var cur_lenght = string_length(arr_menu_options[i]);

    if (cur_lenght > max_length) {
       max_length = cur_lenght;
       longest_option = i;

    }
}

square_width = (string_length(arr_menu_options[longest_option]) * pixels)
square_height = options_number*pixels

draw_set_color(c_black)

//left upper corner || right lower corner
draw_rectangle(width/2 - square_width/2, height/2 - square_height/2 - 10,
width/2 + square_width/2, height/2 + square_height/2, false )

//options draw
for (i = 0; i < options_number; i += 1)
{
	var option_y_level =  height/2 - square_height/2 + (pixels * i)

	if choice = i
	{
		draw_set_color(c_yellow)
		draw_text(width/2 - square_width/2, option_y_level, " * " + string(arr_menu_options[i]))
		//bar draw for any volume
		if(arr_menu_options[i] == "Master Volume")
			{
				draw_healthbar(width/2 - square_width/2+ 200, option_y_level,
				width/2 - square_width/2+ 400, 
				option_y_level+20, obj_audio.master_volume *100, c_black, c_red,c_green, 0, 1, 1)
				draw_set_color(c_white);
				draw_text(
					width/2 - square_width/2 + 410,
					option_y_level,
					string(round(obj_audio.master_volume * 100)) + "%"
					)
			}
		if(arr_menu_options[i] == "Music Volume")
			{
				draw_healthbar(width/2 - square_width/2+ 200, option_y_level,
				width/2 - square_width/2+ 400, 
				option_y_level+20, obj_audio.music_volume *100, c_black, c_red,c_green, 0, 1, 1)
				draw_set_color(c_white);
				draw_text(
					width/2 - square_width/2 + 410,
					option_y_level,
					string(round(obj_audio.music_volume * 100)) + "%"
					)
			}
		if(arr_menu_options[i] == "Effects Volume")
			{
				draw_healthbar(width/2 - square_width/2+ 200, option_y_level,
				width/2 - square_width/2+ 400, 
				option_y_level+20, obj_audio.sfx_volume *100, c_black, c_red,c_green, 0, 1, 1)
				draw_set_color(c_white);
				draw_text(
					width/2 - square_width/2 + 410,
					option_y_level,
					string(round(obj_audio.sfx_volume * 100)) + "%"
					)
			}
	}else
	{
		draw_set_color(c_white)
		draw_text(width/2 - square_width/2, option_y_level,  string(arr_menu_options[i]))
	}
mysz_x = mouse_x - camera_get_view_x(view_camera[0])
mysz_y = mouse_y - camera_get_view_y(view_camera[0])

if point_in_rectangle(mysz_x, mysz_y, 
	width/2 - square_width/2,
	height/2 - square_height/2,
	width/2 + square_width/2,
	height/2 + square_height/2)
{
	

var mouse_pos = (mysz_y - (height/2 - square_height/2)) div (square_height/options_number)
if mouse_pos < 0 { mouse_pos=0}
if mouse_pos > options_number-1 {mouse_pos=options_number-1}

choice = mouse_pos
	
}




}

