draw_self();

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fonte);
draw_text_transformed(x, y, texto, escalaXTexto, escalaYTexto, 0);

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
