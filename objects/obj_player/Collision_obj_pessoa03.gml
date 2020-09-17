/// @description colisão
if(!imune)
	{
		vida --;
		audio_play_sound(snd_hurt,1,false);
		imune = true;
		alarm[1] = global.segundo * 5;
		image_blend = c_red;
	}
else
	{
		exit;
	}