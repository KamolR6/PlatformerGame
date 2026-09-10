
var charge_sprite = spr_charge_level
if(ui){
	draw_sprite(charge_sprite, used_charges, 64, 32)
	draw_sprite(keyboard_f_outline, 0, 64, 64)
	draw_sprite(keyboard_r_outline, 0, 64, 96)
	draw_sprite(keyboard_q_outline, 0, 64, 128)
	draw_sprite(mouse_left, 0, 96, 128)
	draw_sprite(keyboard_e_outline, 0, 64, 160)
	draw_sprite(mouse_right, 0, 96, 160)
	
	draw_set_valign(fa_center)
	draw_text(64, 64, "Restart Size")
	draw_text(64, 96, "Restart Level")
	draw_text(96, 128, "Enlarge (proj.)")
	draw_text(96, 160, "Diminish (proj.)")
}