/// @description Checando se o jogo acabou

if(global.golsJogador1 >= global.golsMax) {
	
	if(global.doisJogadores){
		show_message("Jogador 1 venceu")
	}else {
		show_message("Jogador venceu")
	}
	
	global.golsJogador1 = 0
	global.golsJogador2 = 0
	
	game_restart()
}

if(global.golsJogador2 >= global.golsMax) {
	
	if(global.doisJogadores){
		show_message("Jogador 2 venceu")
	}else {
		show_message("IA venceu")
	}
	
	global.golsJogador1 = 0
	global.golsJogador2 = 0
	
	game_restart()
}
