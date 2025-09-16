draw_sprite_ext(spr_bg_item1, global.listaItensBloqueados[indice], x, y, 3, 3, 0, c_white, 1);

draw_self();

draw_set_font(fn_preco);

draw_sprite(spr_icone_coletavel, 0, x - 20, y + 60);

draw_text(x + 15, y + 50, custo);

draw_set_font(-1);