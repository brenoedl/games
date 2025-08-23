/// @description Criando e usando a IA

if (global.doisJogadores) exit

vspeed = global.velBola

if(vspeed >= velIA) {
	vspeed = velIA
}

if(vspeed < velIA) {
	vspeed = -velIA
}