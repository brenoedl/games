instance_destroy();

other.ganhaVida();

repeat(3){
	var _particula = instance_create_layer(x, y, layer, objParticulaPowerUp);
	_particula.image_angle = random(190);
}