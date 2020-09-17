/// @description espirro

//Anti multi trigger
contador = true;

//Espirro efetivo
var pedaco;
pedaco = irandom_range(3,6);
audio_play_sound(snd_espirro,1,false);
repeat(pedaco)
	{
		instance_create_layer(x,y,"Inimigos",obj_virus);
	}
