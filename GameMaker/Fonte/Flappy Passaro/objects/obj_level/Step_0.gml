if(!global.morreu){
	global.pontos += 0.1;
	
	if(global.pontos % 100 == 0){
		global.coletaveis ++
	}
	
	if(global.level < 9){
		var _pontos_necessarios = global.lista_pontos[global.level -1]
		
		if(global.pontos >= _pontos_necessarios){
			global.level++;
			
			layer_hspeed("bg_arvores", -1 -global.level);
			layer_hspeed("bg_reflexoArvores", -1 -global.level);
			layer_hspeed("bg_reflexo2", -global.level);
		}
	}
}