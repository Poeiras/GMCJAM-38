/// @description movimento

#region Cálculo de movimento
//Esse laço de repetição precisa ser configurado junto com bloco
//Sem o bloco o objeto irá para a ponta room
if(move &&! soaped)
	{
		//Laço de repetição
		var xx = sign(velocidade);
		var yy = sign(velocidade);
		repeat(abs(velocidade))
		{
			if(!place_meeting(x+velocidade,y,obj_bloco))
			{
				if(horizontal)
					{
						x += xx;
						image_index = 1;
					}
			}
		else
			{
				velocidade *= -1;
				if(velocidade < 0)
					{
						image_index =2;
					}
			}		
		}	
		repeat(abs(velocidade))
		{
			if(!place_meeting(x,y+velocidade,obj_bloco))
			{
				if(vertical)
					{
						y += yy;
						image_index =3;
					}
			}
		else
			{
				velocidade *= -1;
				if(velocidade <0)
					{
						image_index = 4;
					}
			}
		}	
	}
//Parado
else
	{
		x += 0;
		y += 0;
		image_index = 0;
	}
#endregion

#region Clamp de tela
x = clamp(x,32,room_width-32);
y = clamp(y,32,room_height-32);
#endregion

#region Tiro
var j1 = instance_exists(obj_player);
if(!j1)
	{
		exit;
	}
else
	{
		var	jogador = point_distance(x,y,obj_player.x,obj_player.y);
		if(contador = false)
			{
				if(jogador < 180)
				{
					alarm[2] = true;
				}
			}
		if(contador = true)
			{
				c1++;
				if(c1 >= global.segundo*4)
					{
						contador = false;
						c1 = 0;
					}
			}
	}
#endregion