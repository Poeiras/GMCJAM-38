/// @description começo da room

#region Começo da primeira fase
var fase = rm_fase01a;
if(room = fase)
	{
		//Jogador na entrada
		var jogador,entrada;
		jogador = instance_exists(obj_player);
		entrada = obj_entrada;
		if(!jogador)
			{
				instance_create_layer(entrada.x,entrada.y,"Player",obj_player);
				global.vivo = true;
			}
			
		//Camera
		view_enabled = true;
		view_visible[0] = true;
		
	}
#endregion

#region Começo da segunda fase
var fase02 = rm_fase02a;
if(room = fase02)
	{
		//Jogador na entrada
		var jogador,entrada;
		jogador = instance_exists(obj_player);
		entrada = obj_entrada;
		if(!jogador)
			{
				instance_create_layer(entrada.x,entrada.y,"Player",obj_player);
				global.vivo = true;
			}
			
		//Camera
		view_enabled = true;
		view_visible[0] = true;
		camera_set_view_pos(view_camera[0],0,1440);
	}
#endregion

#region Começo da terceira fase
var fase03 = rm_fase03a;
if(room = fase03)
	{
		//Jogador na entrada
		var jogador,entrada;
		jogador = instance_exists(obj_player);
		entrada = obj_entrada;
		if(!jogador)
			{
				instance_create_layer(entrada.x,entrada.y,"Player",obj_player);
				global.vivo = true;
			}
			
		//Camera
		view_enabled = true;
		view_visible[0] = true;
		camera_set_view_pos(view_camera[0],1980,0);
	}
#endregion

#region Agradecimentos
if(room = rm_end)
	{
		audio_play_sound(snd_aplauso,1,false);
	}
#endregion