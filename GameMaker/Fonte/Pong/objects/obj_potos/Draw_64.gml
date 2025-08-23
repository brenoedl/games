/// @description Mostando os pontos
if(global.doisJogadores){
	draw_text(x - 150, y, "Player 1")
}else {
	draw_text(x - 148, y, "Player")
}

draw_text(x - 64, y, global.golsJogador1)
draw_text(x, y, "X")
draw_text(x + 64, y, global.golsJogador2)

if(global.doisJogadores){
	draw_text(x + 112, y, "Player 2")
}else {
	draw_text(x + 127, y, "IA")
}



