draw_set_font(Ft_pontos);

var _pontos = round(global.pontos);
var _meio_tela = window_get_width() / 2;

draw_text(40, 20, "Pontos: " + string(_pontos));

draw_sprite_ext(spr_level, global.level, _meio_tela, 60, 3, 3, 0, c_white, 0.8);

draw_sprite_ext(spr_icone_coletavel, 0, 40, 80, 2, 2, 0, c_white, 1);

draw_text(100, 78, global.coletaveis);

draw_set_font(-1);

