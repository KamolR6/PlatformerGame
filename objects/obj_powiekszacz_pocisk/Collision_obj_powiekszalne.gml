if(!collision_circle(x,y,128,obj_gracz,1,1)){
	other.start_scale = other.image_xscale;
	other.start_x = other.x;
	other.start_y = other.y;

	other.target_scale = other.image_xscale * 2;
	other.rosnie = true;

	instance_destroy();
}