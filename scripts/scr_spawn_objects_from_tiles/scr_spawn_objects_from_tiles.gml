function scr_spawn_objects_from_tiles(tilemap_layer_name, tile_object_map){
	var _tilemap = layer_tilemap_get_id(tilemap_layer_name)
	
	if (_tilemap == -1) {
		show_debug_message("Tile layer not found: " + tilemap_layer_name)
		return
	}
	
	var _tile_w = tilemap_get_tile_width(_tilemap)
	var _tile_h = tilemap_get_tile_height(_tilemap)
	var _w = tilemap_get_width(_tilemap)
	var _h = tilemap_get_height(_tilemap)

	for (var _cy = 0; _cy < _h; _cy++) {
		for (var _cx = 0; _cx < _w; _cx++) {

			var _tile_data = tilemap_get(_tilemap, _cx, _cy)
			var _index = tile_get_index(_tile_data)

			if (_index != 0 && ds_map_exists(tile_object_map, _index)) {

				var _obj = tile_object_map[? _index]
				var _wx = _cx * _tile_w
				var _wy = _cy * _tile_h

				instance_create_layer(_wx, _wy, tilemap_layer_name, _obj)
			}
		}
	}
}