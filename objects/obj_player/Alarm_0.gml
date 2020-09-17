/// @description alarme de dano
if(!imune)
	{
		vida --;
		imune = true;
		alarm[1] = global.segundo * 5;
		image_blend = c_red;
		audio_play_sound(snd_hurt,1,false);
	}
else
	{
		exit;
	}
