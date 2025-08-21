/// @description Quicando nas paredes

move_bounce_solid(true);

speed += increVel;

audio_pause_sound(snd_boing);
audio_play_sound(snd_boing, 1, false, 1);
