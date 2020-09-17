/// @description UI

//morte
if(global.morto = true)
	{
		var cor = c_black;
		draw_rectangle_color(global.metadex-150,global.metadey-100,global.metadex+150,global.metadey+100,cor,cor,cor,cor,false);
		draw_text(global.metadex,global.metadey,"TRY AGAIN!" + "\n" + "HIT SPACE TO TRY AGAIN" + "\n" + "HIT ENTER TO LEAVE STAGE")
	}