
if(obj_gierka.used_charges < 3){
	var nowyPow = instance_create_layer(x,y,"Instances",obj_pomniejszacz_pocisk)
	var dir = point_direction(x,y,mouse_x,mouse_y)
	nowyPow.direction = dir
	nowyPow.image_angle = dir
	obj_gierka.used_charges++
		obj_audio.audio_play(snd_laserShoot_RMB);
}

	
