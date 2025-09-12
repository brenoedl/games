var _y_coletaveeis = irandom_range(24, 336);

instance_create_layer(680, _y_coletaveeis, "in_coletaveis", obj_coletavel);

var _tempo = game_get_speed(gamespeed_fps) * random_range(2, 7);
alarm[2] = _tempo;
