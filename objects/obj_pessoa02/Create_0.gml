/// @description variáveis

//Movimento
move = false;

//Velocidade e direção
velocidade = 7.5;
vertical	= false;
horizontal	= false;

//Animação
var n1 = irandom_range(4,8);
alarm[0] = global.segundo * n1;
image_speed = 0;
image_index = 0;

//Tiro
c1		 = 0;
contador = false;

//Soaped
soaped = false;