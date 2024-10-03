event_inherited();

// ------------- ATTACK -----------
if(canShoot)
{
	if(abs(o_player.x - x) < range_x and abs(o_player.y - y) < range_y)
	{
		x_speed_temp = hspeed;
		hspeed = 0;
		canShoot = 0;
		alarm[0] = shoot_delay;
	}
}

// ------------ CHECK ---------

if(hspeed == 0)
	if(o_player.x > x) image_xscale = 1; else image_xscale = -1;


if(hspeed>0){
	if(place_meeting(x+x_check,y,o_terrain)){
		c_flip();
	}
	else if (collision_rectangle(x+18,y,x+20,y+2,o_terrain,0,1) == noone)
	{
		c_flip();
	}
}

if(hspeed<0){
	if(place_meeting(x-x_check,y,o_terrain)){
		c_flip();
	}
	else if (collision_rectangle(x-18,y,x-20,y+2,o_terrain,0,1) == noone)
	{
		c_flip();
	}
}