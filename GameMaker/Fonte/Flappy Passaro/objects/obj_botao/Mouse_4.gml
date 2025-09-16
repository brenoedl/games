image_xscale = escalaX * 0.7;
escalaXTexto = 0.7;

image_yscale = escalaY * 1.3;
escalaYTexto = 1.3;

audio_play_sound(snd_botoes, 0, 0);

if(!global.transicao){
	global.destino = destino;
	layer_sequence_create("as_transicao", 0, 0, sqc_transicao1);
}
