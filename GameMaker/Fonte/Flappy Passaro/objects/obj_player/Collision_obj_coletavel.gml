global.coletaveis++;
var _pitch = random_range(0.7, 1.3);

audio_play_sound(snd_coletavel, 0, 0, , , _pitch);

instance_destroy(other);