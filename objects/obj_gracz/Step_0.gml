// Inherit the parent event
event_inherited();
if (keyboard_check_pressed(ord("F"))) {
	show_debug_message("step w graczu nacisniete F")
	start_scale = image_xscale;
	target_scale = default_scale;
	rosnie = true;
}
if (keyboard_check(ord("D"))) {
	hspeed = move_speed;
} else if (keyboard_check(ord("A"))) {
	hspeed = -move_speed;
} else {
	var _friction = get_surface_friction(x, y);
	if (hspeed > 0) {
		hspeed = max(0, hspeed - _friction);
	} else if (hspeed < 0) {
		hspeed = min(0, hspeed + _friction);
	}
}

// --- Kolizja pozioma ---
if (place_meeting(x + hspeed, y, obj_parent_wall)) {
	// dosuwamy gracza krok po kroku aż do ściany
	while (!place_meeting(x + sign(hspeed), y, obj_parent_wall)) {
		x += sign(hspeed);
	}
	hspeed = 0;
}

if (place_meeting(x, y + vspeed + 1, obj_parent_wall)) {
	if (vspeed >= 0) {
		jumpNumber = 2;
	}
	vspeed = 0;
	gravity = 0;
} else {
	gravity = 1;
}
global.save_room = room;
global.save_x = x;
global.save_y = y;
