if arr_menu_options[choice] == "Master Volume"
{
obj_audio.master_volume = min(1, obj_audio.master_volume + 0.01);
}

if arr_menu_options[choice] == "Music Volume"
{
	obj_audio.music_volume = min(1, obj_audio.music_volume + 0.01);
}

if arr_menu_options[choice] == "Effects Volume"
{
	obj_audio.sfx_volume = min(1, obj_audio.sfx_volume + 0.01);
}
