x += vel;

if (x > room_width - 32) {
	vel = -3;
}

if (x < 32) {
	vel = 3;
}