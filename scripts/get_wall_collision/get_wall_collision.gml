function get_wall_collision(_x, _y, _vspeed) {
    return instance_place(_x, _y + _vspeed + 1, obj_parent_wall);
}