// SPRITE CHECKS ---------------
if(ground){
	if(x_speed==0){
		if(!crouch)
		sprite_index=s_idle;
		else
		sprite_index=s_crouch;
	}
	else sprite_index=s_walk;
}
else{
	if(y_speed>=0) sprite_index=s_fall;
	else sprite_index=s_jump;
}

if(right) image_xscale=1;
else image_xscale=-1;

if(!crouch) mask_index=s_player_mask; else mask_index=s_player_crouch_mask;


for (var i = 0; i < hook_c; i++) {
    // Dibuja cada segmento de la cuerda hasta el contador `hook_c`
    var draw_x = lengthdir_x(i * 7, dir) + x;
    var draw_y = lengthdir_y(i * 7, dir) + y;
    draw_sprite_ext(s_hook, 0, draw_x, draw_y, 1, 1, dir, c_white, 1);
}

draw_self();