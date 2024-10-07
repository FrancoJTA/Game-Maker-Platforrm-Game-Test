global.checkpoint=0;
global.respawn=0;
global.previous_room=0;

global.p_hit = part_type_create();
part_type_shape(global.p_hit,pt_shape_square);
part_type_size(global.p_hit,0.04,0.07,0,0);
part_type_color2(global.p_hit,65535,4227327);
part_type_alpha3(global.p_hit,1,1,0);
part_type_speed(global.p_hit,0.70,1.50,-0.02,0);
part_type_direction(global.p_hit,0,359,0,0);
part_type_blend(global.p_hit,1);
part_type_life(global.p_hit,18,30);


global.p_boom = part_type_create();
part_type_sprite(global.p_boom,s_boom,1,1,0);
part_type_size(global.p_boom,2,2,0,0);
part_type_blend(global.p_boom,1);
part_type_life(global.p_boom,18,30);


global.p_boom2 = part_type_create();
part_type_shape(global.p_boom2,pt_shape_disk);
part_type_size(global.p_boom2,0.05,0.1,0,0);
part_type_color3(global.p_boom2,16777088,65535,255);
part_type_alpha3(global.p_boom2,1,1,0);
part_type_speed(global.p_boom2,1,2,-0.01,0);
part_type_direction(global.p_boom2,0,359,0,0);
part_type_gravity(global.p_boom2,0.05,270);
part_type_blend(global.p_boom2,1);
part_type_life(global.p_boom2,18,30);