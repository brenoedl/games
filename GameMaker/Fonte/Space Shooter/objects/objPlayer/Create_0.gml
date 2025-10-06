#region variaveis
vel = 2;
vidas = 3;
escudos = 5;
tempoInvencivel = game_get_speed(gamespeed_fps);

meuEscudo = noone;
esperaTiro = 10;
timerTiro = 0;
timerInvencivel = 0;
levelTiro = 1;
#endregion

#region funções
controlesPlayer = function(){
	timerInvencivel--;
	
	var _cima, _esquerda, _baixo, _direia,  _atirar, _velV, _velH;
	
	_cima = keyboard_check(ord("G")) || keyboard_check(vk_up);
	_esquerda = keyboard_check(ord("V")) || keyboard_check(vk_left);
	_baixo = keyboard_check(ord("B")) || keyboard_check(vk_down);
	_direia = keyboard_check(ord("N")) || keyboard_check(vk_right);
	_atirar = keyboard_check(vk_space) || mouse_check_button(mb_left);
	
	timerTiro--;
	
	_velH = (_direia - _esquerda) * vel;
	hspeed = _velH;
	
	x = clamp(x, sprite_width/2, room_width - sprite_width/2);
		
	_velV = (_baixo - _cima) * vel;
	vspeed = _velV;
	
	y = clamp(y, sprite_height/2, room_height - sprite_height/2);
	moveEscudo()
		
	if(_atirar && timerTiro <= 0){
		if(levelTiro == 1){
			tiro1();
		}else if(levelTiro == 2){
			tiro2();
		}else if(levelTiro == 3){
			tiro3();
		}else if(levelTiro == 4){
			tiro4();
		}else if(levelTiro == 5){
			tiro5();
		}else if(levelTiro == 6){
			tiro6();
		}
		timerTiro = esperaTiro;
	}
}

tiro1 = function(){
	var _tiro = instance_create_layer(x, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
}

tiro2 = function(){
	var _tiro = instance_create_layer(x - 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x + 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
}

tiro3 = function(){
	var _tiro = instance_create_layer(x, y - 10, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x - 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x + 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
}

tiro4 = function(){
	var _tiro = instance_create_layer(x - 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x + 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x - 20, y + 10, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x + 20, y + 10, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
}

tiro5 = function(){
	var _tiro = instance_create_layer(x, y - 10, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x - 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x + 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x - 20, y + 10, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x + 20, y + 10, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
}

tiro6 = function(){
	var _tiro = instance_create_layer(x, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x - 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x + 10, y, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x - 10, y + 20, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x + 10, y + 20, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
	_tiro = instance_create_layer(x, y + 20, "Tiros", objTiroPlayer);
	_tiro.vspeed = -10;
}

ganhaLevelTiro = function(){
	if(levelTiro < 6){
		levelTiro ++;
	}else{
		levelTiro = 6;
	}
}

desenhaIcone = function(_icone = sprGuiVidaPlayer, _quantidade = vidas, _aalltura = 20){
	var _guiHeight = display_get_gui_height();
	
	var _espaco = 0;
	repeat(_quantidade){
		draw_sprite_ext(_icone, 0, 20 + _espaco, _guiHeight - _aalltura, 1, 1, 0, c_white, 0.5);
		_espaco += 30;
	}
}

perdeVida = function(){
	if(timerInvencivel > 0) return;
	if(vidas > 0){
		vidas--;
		timerInvencivel = tempoInvencivel;
	}else{
		destroindo();
	}
}

ganhaVida = function(){
	if(vidas <= 6){
		vidas ++;
	}else{
		vidas = 6;
	}
}

ganhaEscudo = function(){
	if(escudos <= 6){
		escudos ++;
	}else{
		escudos = 6;
	}
}

usarEscudo = function(){
	if(escudos > 0 && meuEscudo == noone){
		escudos--;
		meuEscudo = instance_create_layer(x, y, "Escudos", objEscudo);
		timerInvencivel = tempoInvencivel * 5;
	}else{
		meuEscudo = noone;
	}
}

moveEscudo = function(){
	if(instance_exists(meuEscudo)){
		meuEscudo.x = x;
		meuEscudo.y = y;
	}else{
		meuEscudo = noone
	}
}
#endregion