// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_weapon_pistol(argument0){
	if(canShoot){
		if(image_xscale==1){
			instance_create_layer(x+weapon_modx,y+weapon_mody,"att",argument0);
			canShoot=0;
			alarm[0]=reload_speed
		}
		else{
			obj=instance_create_layer(x-weapon_modx,y+weapon_mody,"att",argument0);
			obj.direction=180;
			obj.image_angle = obj.direction;
			canShoot=0;
			alarm[0]=reload_speed;
		}
	}
}