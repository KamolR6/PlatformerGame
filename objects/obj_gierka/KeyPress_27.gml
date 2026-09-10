if(room != r_menu){
	if ( !instance_exists(obj_menu))
	{
		instance_create_layer(x,y, "GameObjects", obj_menu)
	}else
	{
		instance_destroy(obj_menu)
		instance_activate_all();
	}
}