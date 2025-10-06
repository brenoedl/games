#region varíaveis
global.debug = false;
#endregion

#region funções
function destroindo(_particula = objParticulaPlayer){
	instance_destroy();
	instance_create_layer(x, y, "Particulas", _particula);
}
#endregion