if(global.listaItensBloqueados[indice] && global.coletaveis >= custo){
	global.listaItensBloqueados[indice] = false;
	global.coletaveis -= custo;
	global.skinPlayer = skin;
}

if(!global.listaItensBloqueados[indice]){
	global.skinPlayer = skin;
}