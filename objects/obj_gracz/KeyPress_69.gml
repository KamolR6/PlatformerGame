if (!rosnie){
if(obj_gierka.used_charges < 3){
	obj_gierka.used_charges++
	var _min_scale = 0.06; // najmniejszy dozwolony rozmiar

	start_scale = image_xscale;
	start_x = x;
	start_y = y;

	target_scale = max(image_xscale / 2, _min_scale);
	rosnie = true;
	}
}
	
