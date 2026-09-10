if (rosnie) {
	if (abs(image_xscale - target_scale) < 0.01) {
		image_xscale = target_scale;
		image_yscale = target_scale;
		rosnie = false;
	}

	var old_bottom = bbox_bottom;

	image_xscale = lerp(image_xscale, target_scale, lerp_speed);
	image_yscale = lerp(image_yscale, target_scale, lerp_speed);

	var bottom_diff = bbox_bottom - old_bottom;
	y -= bottom_diff;

	var is_enlarging = target_scale > start_scale;
	var _margines = 2;

	if (is_enlarging) {
		// WZROST - jeśli kolizja, cofamy całkowicie
		if (place_meeting(x, y - _margines, obj_parent_wall)) {
			image_xscale = start_scale;
			image_yscale = start_scale;
			target_scale = start_scale;
			x = start_x;
			y = start_y;
			rosnie = false;
			obj_gierka.used_charges -= 1;
		}
	} else {
		var _tries = 0;
		while (place_meeting(x, y, obj_parent_wall) && _tries < 32) {
			y -= 1;
			_tries += 1;
		}
	}
}

move_speed = base_move_speed / max(power(image_xscale, scale_power), 0.01);
jump_height = base_jump_height * power(image_yscale, scale_power);
