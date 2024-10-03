// ------------ STATS ----------
hp=30;

canShoot=1;
shoot_delay=30;
reload_speed=90;

range_x = 200;
range_y = 64;

// -------------- MOVIMIENTO ---------

x_speed=1;
x_check=11;

x_speed_temp = 0;


hspeed=x_speed;

if(irandom(1))hspeed=x_speed;
else {
	hspeed=-x_speed;
	image_xscale=-1;
}

mask_index = s_player_mask;