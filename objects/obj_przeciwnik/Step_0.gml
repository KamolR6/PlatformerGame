// Inherit the parent event
event_inherited();

if(place_meeting(x,y + vspeed + 1, obj_parent_wall)){
	vspeed = 0
	gravity = 0
	friction = 1
}else{
	gravity = 1
	friction = 0
}
if (!rosnie){
	if(place_meeting(x+move_speed*ruch,y,obj_parent_wall)){
		ruch = -ruch
	}else{
		x += move_speed * ruch ;
	}
}else{
	move_speed = 0
	
}
if(image_xscale <= 0.4){
	instance_destroy()
}