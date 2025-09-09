if(global.morreu){
	hspeed = 0;
}else{
	hspeed = -1 -global.level;
}

if(x <= -32){
	instance_destroy();
}