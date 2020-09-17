/// @description tiro
contador = true;
var tiro = irandom_range(5,10);
audio_play_sound(snd_espirro,1,false);
repeat(tiro)
	{
		instance_create_layer(x,y,"Inimigos",obj_virus);
	}
image_index ++;
if(image_index >=5)
	{
		image_index = 0;
	}