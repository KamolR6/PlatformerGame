function get_surface_friction(_x, _y){
	var _floor = instance_place(x, y + 1, obj_parent_wall);

    if (_floor != noone) {
        return _floor.surface_friction;
    }

    return 0;
}