var _y_arvores = irandom_range(360, 464);

instance_create_layer(704, _y_arvores, "in_arvores", obj_arvore);

var _tempo = game_get_speed(gamespeed_fps) * random_range(2, 5);
alarm[0] = _tempo