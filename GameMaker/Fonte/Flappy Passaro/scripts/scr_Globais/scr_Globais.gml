#region variaves globais
	global.morreu = false;
	global.pontos = 0;
	global.level = 1;
	global.lista_pontos = [100, 250, 500, 800, 1200, 1800, 2500, 3500, 5000];
	global.coletaveis = 0;
#endregion

#region funçõs
	function perdeu(){
		if(global.morreu) exit;
	
		global.morreu = true;
		global.level = 1;

		vspeed = -4;
		hspeed = -2;

		layer_hspeed("bg_arvores", 0);
		layer_hspeed("bg_reflexoArvores", 0);
		layer_hspeed("bg_reflexo2", 0);

		obj_player.alarm[0] = game_get_speed(gamespeed_fps);
	}
#endregion