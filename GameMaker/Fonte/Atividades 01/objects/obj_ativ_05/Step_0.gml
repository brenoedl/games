x += vel_x;
y += vel_y;

if (x > room_width - 32 || x < 32) {
	vel_x = -vel_x;
}