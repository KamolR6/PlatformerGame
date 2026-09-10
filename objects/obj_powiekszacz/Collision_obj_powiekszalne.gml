if(!cooldown){
	other.start_scale = other.image_xscale;
	other.start_x = other.x;
	other.start_y = other.y;

	other.target_scale = other.image_xscale * 2;
	other.rosnie = true;

	instance_destroy();
}