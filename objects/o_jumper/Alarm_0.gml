ground=0;
y_speed=-jump_power;
x_speed=x_speed_max;

if(o_player.x>x){
	image_xscale=1;
}
else{
	x_speed=-x_speed;
	image_xscale=-1;
}
	alarm[0]=irandom_range(jump_time/2,jump_time);