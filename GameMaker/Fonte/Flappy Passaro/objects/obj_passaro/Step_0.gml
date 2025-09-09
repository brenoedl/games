if(global.morreu){
	hspeed = 0;
	image_speed = 0;
}else{
	hspeed = -2 -global.level;
	image_speed = 1
}

if(x <= -64){
	instance_destroy();
}