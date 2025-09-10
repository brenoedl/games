draw_self();

draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fonte);
draw_text(x, y, texto);

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
