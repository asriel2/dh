///scr_teclado()
derecha = keyboard_check(vk_right) || keyboard_check(ord('D'));
izquierda = keyboard_check(vk_left)|| keyboard_check(ord('A')) ;
abajo = keyboard_check(vk_down) || keyboard_check(ord('S'));
arriba = keyboard_check(vk_up) || keyboard_check(ord('W'));
x_axis = (derecha - izquierda);
y_axis = (abajo - arriba);
