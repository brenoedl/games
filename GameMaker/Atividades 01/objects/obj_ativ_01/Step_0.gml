x += vel;

if (x > room_width + 32) {
	x = -32;
	vel += 1;
}