// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_hook(){
    // Si presiona Enter, calcula la dirección y distancia
    dir = point_direction(x, y, x+256, y-256);
    dist = point_distance(x, y, x+256, y-256);
    hook_n = round(dist / 7);  // Número de segmentos de la cuerda
    hook_c = 0;  // Reinicia el contador de segmentos
    alarm[10] = time_hook; 
}