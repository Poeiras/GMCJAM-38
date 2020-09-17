/// @description try again
if(global.morto)
	{
		var trans = instance_create_layer(0,0,"Botoes",obj_trans);
		trans.destino = room_restart();
		global.morto =  false;
	}