///scr_teclado()
derecha = keyboard_check(vk_right);
izquierda = keyboard_check(vk_left);
abajo = keyboard_check(vk_down);
arriba = keyboard_check(vk_up);
x_axis = (derecha - izquierda);
y_axis = (abajo - arriba);
