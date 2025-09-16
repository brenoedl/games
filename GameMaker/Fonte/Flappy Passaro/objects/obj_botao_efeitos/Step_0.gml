image_xscale = lerp(image_xscale, escalaX, 0.1);
image_yscale = lerp(image_yscale, escalaY, 0.1);
escalaXTexto = lerp(escalaXTexto, 1, 0.1);
escalaYTexto = lerp(escalaYTexto, 1, 0.1);

if(global.efeitos) {
	image_alpha = 1;
}else {
	image_alpha = 0.5;
	
}