/// @description vidas
var numero = 24;
//Vidas
repeat(vida)
{
	draw_sprite_ext(spr_heart,0,numero,32,1,1,0,c_white,1);
	numero += 48;
}
		
//Munição
var muni = 24;
repeat(soaps)
{
	draw_sprite_ext(spr_soap,0,muni,70,1,1,0,c_white,1);
	muni += 48;
}
		
//Pontos
draw_text(57,96,"Syringes: " + string(global.pontos));
