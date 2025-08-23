/// @description Colocando texto no botão 2

draw_self()
//Alinhando o texto
draw_set_halign(1)
draw_set_valign(1)

if(global.doisJogadores) {
	draw_text(x, y, "2 jogadores")
}else {
	draw_text(x, y, "1 jogador")
}
draw_set_halign(-1)
draw_set_valign(-1)