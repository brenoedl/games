if(!global.morreu){
	global.pontos += 0.1;
	
	if(global.pontos % 100 == 0){
		global.coletaveis ++;
		audio_play_sound(snd_coletavel, 0, 0);
	}
	
	if(global.level < 9){
		var _pontos_necessarios = global.listaPontos[global.level -1]
		
		if(global.pontos >= _pontos_necessarios){
			global.level++;
			
			audio_play_sound(snd_level_up, 0, 0);
			
			layer_hspeed("bg_arvores", -1 -global.level);
			layer_hspeed("bg_reflexoArvores", -1 -global.level);
			layer_hspeed("bg_reflexo2", -global.level);
		}
	}
}