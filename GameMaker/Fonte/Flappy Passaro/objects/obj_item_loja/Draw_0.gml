draw_self();

draw_set_font(fn_preco);

draw_sprite_ext(spr_icone_coletavel, 0, x - 25, y + 30, 2, 2, 0, c_white, 1);

draw_text(x + 25, y + 28, custo);

draw_set_font(-1);