/// @description config

#region Botões de movimento
var cima,baixo,dir,esq,acao;
cima	= keyboard_check(vk_up);
baixo	= keyboard_check(vk_down);
dir		= keyboard_check(vk_right);
esq		= keyboard_check(vk_left);
acao	= keyboard_check_released(vk_space);
#endregion

#region Cáculo de velocidade de movimento
var horizontal, vertical;
horizontal	= (dir - esq) * velocidade;
vertical	= (baixo - cima) * velocidade;

repeat(abs(horizontal))
	{
		if(!place_meeting(x+sign(horizontal),y,obj_bloco))
			{
				x += sign(horizontal);
			}
		else
			{
				horizontal = 0;
			}
	}
repeat(abs(vertical))
	{
		if(!place_meeting(x,y+sign(vertical),obj_bloco))
			{
				y += sign(vertical);
			}
		else
			{
				vertical = 0;
			}
	}
#endregion

#region Clamp da tela
x = clamp(x,32,room_width-32);
y = clamp(y,32,room_height-32);
#endregion

#region Morte do player
if(vida <=0)
	{
		instance_destroy();
	}
#endregion

#region Ordem das sprites
if(vertical !=0 || horizontal !=0)
	{
		image_speed = 0.4;
	}
else
	{
		image_speed = 0;
	}
if(baixo)
	{
		sprite_index = spr_player_baixo;
		image_xscale = 1;
	}
if(dir)
	{
		sprite_index = spr_player_lateral;
		image_xscale = 1;
	}
if(cima)
	{
		sprite_index = spr_player_cima;
		image_xscale = 1;
	}
if(esq)
	{
		sprite_index = spr_player_lateral;
		image_xscale = -1;
	}
#endregion

#region Máscara item
var mascara = instance_exists(obj_mask);
if(imune &&! mascara)
	{
		imune = false;
	}
#endregion

#region Tiro ação
if(dir)
	{
		global.soapdir	= 0;
	}
if(esq)
	{
		global.soapdir	= 180;
	}
if(cima)
	{
		global.soapdir	= 90;
	}
if(baixo)
	{
		global.soapdir	= 270;
	}
	
//botão de ação efetiva
var sabao = instance_exists(obj_soap);
if(acao and soaps>=1 &&! sabao)
	{
		soaps --;
		instance_create_layer(x,y,"Player",obj_soap);
	}
//Reload do soap
if(soaps <3)
	{
		newsoap ++;
		if(newsoap >= global.segundo *6)
			{
				soaps++;
				newsoap = 0;
			}
	}
#endregion