// ------- INPUT ------

if (keyboard_check(vk_right))
{      
	if(x_speed < 0) x_speed = 0;
	if(x_speed < x_speed_max) x_speed += x_accel;
	right=1;
}

if (keyboard_check(vk_left))
{      
	if(x_speed > 0)	x_speed = 0;
	if(x_speed > -x_speed_max) x_speed -= x_accel;
	right=0;
}

if (!keyboard_check(vk_right) and !keyboard_check(vk_left)) x_speed=0;
if (keyboard_check(vk_right) and keyboard_check(vk_left)) x_speed=0;
// -------------- CROUCH -----------------

if(keyboard_check(vk_down))
{
	if(ground)
	{
		crouch = 1;
		x_speed = 0;
		weapon_mody = -14;
	} 
}
else
{
	crouch = 0;
	weapon_mody = -25;
}

// ----------- JUMP --------------
if (keyboard_check_pressed(vk_space))
{
	if(ground or coyote_c)
	{

		ground = 0;
		coyote_c = 0;
		if(crouch and place_free(x,y+1)) y+=1;
		
		else y_speed = -jump_power;
	}
}
if (keyboard_check_released(vk_space))
{
	if(y_speed < 0) y_speed = 0;	
}


// ------- MOVIMIENTO -------
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
	coyote_c=1;
}
else{
	crouch=0;
	// bug arreglado al agacharse
	ground=0;
	y_speed+=grav;
	if(coyote_c and alarm[11]==-1) alarm[11]=coyote_t;
	
	if(y_speed > fall_max) y_speed = fall_max;
	
	if(!place_free(x,y-1)){
		if(y_speed<0) y_speed=0;
	}
}

// ---------- WEAPON --------

if(keyboard_check(vk_control)){
	c_weapon_pistol(weapon);
}