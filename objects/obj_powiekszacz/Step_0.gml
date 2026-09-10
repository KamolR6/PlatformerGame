if(place_meeting(x,y + vspeed + 1, obj_parent_wall)){
	vspeed = 0
	gravity = 0
	friction = 1
}else{
	gravity = 1
	friction = 0
}