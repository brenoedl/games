alarm[0] = game_get_speed(gamespeed_fps) * 2;

criadoEmSequence = in_sequence;

tiro = function(){
	var _tiro = instance_create_layer(x, y, "Tiros", objTiroInimigo1);
	_tiro.vspeed = 4;
}

morrendo = function(){
	destroindo(objParticulaInimigos);
	var _chance = random(100);
	
	if(_chance > 85){
		instance_create_layer(x, y, "PowerUp", objPowerUpTiro);
	}
	
	if(_chance > 70){
		instance_create_layer(x, y, "PowerUp", objPowerUpVida);
	}
	
	if(_chance > 50){
		instance_create_layer(x, y, "PowerUp", objPowerUpEscudo);
	}
}