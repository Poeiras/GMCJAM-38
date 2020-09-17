/// @description config
if(global.pontos >= global.meta01)
	{
		mudar = true;
		var enter = keyboard_check_released(vk_enter);
		if(enter && place_meeting(x,y,obj_player))
			{
				var trans = instance_create_layer(0,0,"Botoes",obj_trans);
				trans.destino = destino;	
			}
	}
		
