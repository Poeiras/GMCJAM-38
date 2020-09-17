/// @description config

image_angle += taxa_rotacao;

if(giro)
	{
		sumir = true;
		if(sumir)
			{
				image_alpha -= 0.01;
				if(image_alpha <0)
					{
						instance_destroy();
						giro = false;
						obj_pessoa.soaped = false;
					}
			}
	}
	
var fora;
fora = x > room_width + 64 || x < -64 || y > room_height  +64 || y < -64;
if(fora)
	{
		instance_destroy();
	}