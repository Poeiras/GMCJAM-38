/// @description
#region Tela inicial
var inicial = rm_menu;
if(room = inicial)
	{
		draw_sprite(spr_player_baixo,0,global.metadex,global.metadey);
		draw_text(global.metadex,global.metadey+48,"WELCOME TO VACCINE MAZE!");
		draw_text(950,728,"MADE BY MR.DUST" + "\n" + "GMC JAM 38");
	}
#endregion

#region Regras
if(room = rm_seleciona)
	{
		//Distânca
		draw_text(global.metadex,global.metadey+64,"KEEP SOCIAL DISTANCE");
		draw_sprite_ext(spr_pessoa,0,global.metadex,global.metadey,1,1,0,c_white,1);
		
		//Virus
		draw_sprite_ext(spr_virus,0,room_width-192,global.metadey,1,1,0,c_white,1);
		draw_text(room_width-192,global.metadey+64,"STAY AWAY FROM THE VIRUS");
		
		//Mask
		draw_sprite_ext(spr_mask,0,192,global.metadey,1,1,0,c_white,1);
		draw_text(192,global.metadey+64,"USE A MASK");
	}
#endregion

#region Instruções
var instru = rm_tutorial;
if(room = instru)
	{
		//Teclas
		draw_sprite_ext(spr_kbd,0,global.metadex,global.metadey-74,1,1,90,c_white,1); //cima
		draw_sprite_ext(spr_kbd,0,global.metadex,global.metadey,1,1,270,c_white,1); //baixo	
		draw_sprite_ext(spr_kbd,0,global.metadex-74,global.metadey,1,1,180,c_white,1); //esq
		draw_sprite_ext(spr_kbd,0,global.metadex+74,global.metadey,1,1,0,c_white,1); //dir
		draw_sprite_ext(spr_space,0,global.metadex,global.metadey+74,1,1,0,c_white,1); //espaço
		
		//Instruções
		draw_text(global.metadex,global.metadey+120,"USE ARROW KEYS TO MOVE");
		draw_text(global.metadex,global.metadey+140,"USE SPACE KEY TO SHOOT SOAPS");
		draw_text(global.metadex,global.metadey+160,"MAKE YOUR ENEMIES WASH HANDS");
		
		//Itens
		draw_sprite_ext(spr_seringa,0,room_width-192,global.metadey,1,1,0,c_white,1); //seringa
		draw_text(room_width-192,global.metadey+64,"FIND SYRINGES TO MAKE POINTS" + "\n" + "AND FINISH THE MAZE");
		draw_sprite_ext(spr_mask,0,192,global.metadey,1,1,0,c_white,1); //mask
		draw_text(192,global.metadey+64,"MASKS MAKE YOU IMUNE" + "\n"+ "FOR A SHORT TIME");
		
		//Coração
		draw_sprite_ext(spr_heart,0,global.metadex,global.metadey+236,1,1,0,c_white,1)
		draw_text(global.metadex,global.metadey+312,"IS IT NECESSARY TO EXPLAIN THIS ONE?");
	}
#endregion

#region Fim do jogo
var fim = rm_end;
if(room = fim)
	{
		draw_text(global.metadex,global.metadey,"CONGRATULATIONS!" + "\n" + "YOU FOUND ENOUGH SYRINGES FOR THE CURE!");	
	}
#endregion