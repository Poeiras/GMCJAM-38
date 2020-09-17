/// @description config

if(aumentar)
	{
		image_xscale += taxa_escala;
		image_yscale += taxa_escala;
		if(image_xscale >= 1.5)
			{
				aumentar = false;
				diminuir = true;
			}
	}
if(diminuir)
	{
		image_xscale -= taxa_escala;
		image_yscale -= taxa_escala;
		if(image_xscale <=0.85)
			{
				diminuir = false;
				aumentar = true;
			}
	}

if(presa)
	{
		image_xscale = .75;
		image_yscale = .75;
		x = obj_player.x;
		y = obj_player.y;
		if(sumindo)
			{
				image_alpha -= taxa_alfa;
			}
		if(image_alpha <0)
			{
				instance_destroy();
			}
	}