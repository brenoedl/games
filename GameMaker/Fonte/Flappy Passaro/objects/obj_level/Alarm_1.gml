var _y_passaros = irandom_range(48, 136);

instance_create_layer(688, _y_passaros, "in_passaros", obj_passaro);

var _tempo  = game_get_speed(gamespeed_fps) * random_range(2, 4);
alarm[1] = _tempo;