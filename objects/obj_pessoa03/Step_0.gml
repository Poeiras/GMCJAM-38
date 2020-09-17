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