///scr_teclado()
derecha = keyboard_check(vk_right) || keyboard_check(ord('D'));
izquierda = keyboard_check(vk_left)|| keyboard_check(ord('A'));
abajo = keyboard_check(vk_down) || keyboard_check(ord('S'));
arriba = keyboard_check(vk_up) || keyboard_check(ord('W'));
izquierda_p = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord('A'));
derecha_p = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord('D'));
abajo_p = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord('S'));
arriba_p = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord('W'));
izquierda_r = keyboard_check_released(vk_left) || keyboard_check_released(ord('A'));
derecha_r = keyboard_check_released(vk_right) || keyboard_check_released(ord('D'));
abajo_r = keyboard_check_released(vk_down) || keyboard_check_released(ord('S'));
arriba_r = keyboard_check_released(vk_up) || keyboard_check_released(ord('W'));
seleccionar = keyboard_check(vk_enter) || keyboard_check(ord('Z'));
deseleccionar = keyboard_check(vk_shift) || keyboard_check(ord('X'));
menu = keyboard_check(ord('C'));
seleccionar_p = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord('Z'));
deseleccionar_p = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord('X'));
menu_p = keyboard_check_pressed(ord('C'));
seleccionar_r = keyboard_check_released(vk_enter) || keyboard_check_released(ord('Z'));
deseleccionar_r = keyboard_check_released(vk_shift) || keyboard_check_released(ord('X'));
menu_R = keyboard_check_released(ord('C'));

x_axis = (derecha - izquierda);
y_axis = (abajo - arriba);
