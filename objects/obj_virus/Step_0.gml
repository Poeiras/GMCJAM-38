/// @description configuração

//Giro
image_angle += taxa_rotacao;

//Longe do 1° objeto
if(!instance_exists(obj_pessoa))
	{
		exit;
	}
else
	{
		var emissor,pessoa;
		emissor	= instance_exists(obj_pessoa);
		pessoa	= point_distance(x,y,obj_pessoa.x,obj_pessoa.y);

		if(emissor && pessoa > 128)
			{
				image_alpha -= taxa_alfa;
				if(image_alpha < 0)
					{
						instance_destroy();
					}
			}
	}

//Fora da tela
if (y > room_height + 64 || x > room_width +64 || x < -64 || y < -64)
	{
		instance_destroy();
	}