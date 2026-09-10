// w obj_pomniejszacz, przed ustawieniem target_scale
if(!collision_circle(x,y,128,obj_gracz,1,1)){
var _min_scale = 0.06; // najmniejszy dozwolony rozmiar

	other.start_scale = other.image_xscale;
	other.start_x = other.x;
	other.start_y = other.y;

	other.target_scale = max(other.image_xscale / 2, _min_scale);
	other.rosnie = true;

	instance_destroy();
}