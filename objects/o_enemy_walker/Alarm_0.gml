/// @description Shoot

obj = instance_create_layer(x,y-28,"att",o_enemy_shot);

if(image_xscale = -1) obj.hspeed *= -1;
alarm[1] = reload_speed;

hspeed = x_speed_temp;
if(hspeed > 0)
{
	image_xscale = 1	
}
else
{
	image_xscale = -1;	
}



