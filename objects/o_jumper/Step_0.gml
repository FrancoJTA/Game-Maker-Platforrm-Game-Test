event_inherited();
if(x_speed != 0)
{
	if(x_speed > 0) move_contact_solid(0,x_speed);
	else if (x_speed < 0) move_contact_solid(180,abs(x_speed));
}
if(y_speed != 0)
{
	if(y_speed > 0)
	{
		if(collision_rectangle(x-12,y-10,x+12,y,o_terrain,0,1))
		{
			move_contact_solid(270,y_speed);	
		}
		else
		{
			y_speed_temp = floor(y_speed);
			while(collision_rectangle(x-12,y,x+12,y+y_speed_temp,o_terrain,0,1) != noone and y_speed_temp != 0)
			{
				y_speed_temp -=1; 
			}
			y+= y_speed_temp;
		}
	}
	else if (y_speed < 0)
	{
		move_contact_solid(90,abs(y_speed));
	}
}

// ---------- CHECKS ---------



if (collision_rectangle(x-12,y,x+12,y+1,o_terrain,0,1) and !collision_rectangle(x-12,y-10,x+12,y,o_terrain,0,1)){
	ground=1;
	y_speed=0;
	x_speed=0;

}
else{
	ground=0;
	y_speed+=grav;
	if(y_speed > fall_max) y_speed = fall_max;
	
	if(!place_free(x,y-1)){
		if(y_speed<0) y_speed=0;
	}
}

