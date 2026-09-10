// Inherit the parent event
event_inherited();

if (global.loading_game) {
    x = global.load_x;
    y = global.load_y;

    global.loading_game = false;
}

base_move_speed = 4;
base_jump_height = 12;
jumpNumber = 2;
lewo = 0;
prawo = 0;
default_scale = 1;

move_speed = base_move_speed;
jump_height = base_jump_height;
scale_power = 0.5;
