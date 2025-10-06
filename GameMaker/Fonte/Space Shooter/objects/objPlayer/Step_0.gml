if(keyboard_check_released(vk_tab)){
	global.debug = !global.debug;
}

if(keyboard_check_pressed(ord("E"))){
	usarEscudo();
}

controlesPlayer();