/// @description variáveis

//Movimento
move = false;

//Velocidade e direção
velocidade = 4;
vertical	= false;
horizontal	= false;

//Animação
var n1 = irandom_range(2,5);
alarm[0] = global.segundo * n1;
image_speed = 0;
image_index = 0;

//Tiro
c1		 = 0;
contador = false;

//Soaped
soaped = false;