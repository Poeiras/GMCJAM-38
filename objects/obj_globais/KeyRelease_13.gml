/// @description main menu
if(global.morto)
	{
		var trans = instance_create_layer(0,0,"Botoes",obj_trans);
		trans.destino = rm_menu;
		global.morto = false;
	}