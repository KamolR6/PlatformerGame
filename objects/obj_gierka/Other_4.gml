used_charges = 0
ui = true
szer_pok = room_width / 64
wys_pok = room_height / 64
//show_debug_message(string(szer_pok) + " " + string(wys_pok))
//if(room != r_menu){
//	for(i = 0; i < szer_pok; i++){
//		//i = x
//		//j = y
//		for(j = 0; j < wys_pok; j++){
//			show_debug_message(string(i) + ", " + string(j))
		
//			if(i == 0 || i == szer_pok - 1 || j == 0 || j = wys_pok - 1){
//				instance_create_layer(i*64,j*64,"Instances",obj_sciana)
//			}
//		}
//	}
//}

var _map = ds_map_create()

_map[? 1] = obj_sciana
_map[? 2] = obj_sciana
_map[? 10] = obj_sciana
_map[? 11] = obj_sciana
_map[? 12] = obj_sciana
_map[? 16] = obj_sciana
_map[? 17] = obj_sciana
_map[? 32] = obj_sciana
_map[? 33] = obj_sciana

_map[? 7] = obj_wall_icy
_map[? 8] = obj_wall_icy
_map[? 23] = obj_wall_icy
_map[? 38] = obj_wall_icy




scr_spawn_objects_from_tiles("TileLayer", _map)

ds_map_destroy(_map)