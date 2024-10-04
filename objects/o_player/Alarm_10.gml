if (hook_c < hook_n) {
    hook_c += 1;  // Incrementa el contador para avanzar al siguiente segmento
    alarm[10] = time_hook;  // Reactiva la alarma para el siguiente segmento
} else {
    // Si ya se ha dibujado toda la cuerda, resetea los contadores
    hook_c = 0;
    hook_n = 0;
}