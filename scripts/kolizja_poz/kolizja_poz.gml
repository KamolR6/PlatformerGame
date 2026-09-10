function kolizja_poz(){
	if instance_place(x+move_speed*ruch, y + 0, obj_wall)
	{	
	var xkierunek = sign(move_speed*ruch)
	move_speed = 0;
		{
			while(!instance_place(x+xkierunek, y, obj_wall)){
				x += xkierunek
			}
		}
	}else{
	x += move_speed * ruch ;
	}
}