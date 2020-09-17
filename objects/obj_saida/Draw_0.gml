/// @description
draw_self();
image_blend = noone;
if(place_meeting(x,y,obj_player))
	{
	if(global.pontos < global.meta01)
		{
			draw_text(self.x,self.y+96,"YOU NEED MORE SYRINGES!");
			alarm[0] = true;
		}
	}
if(place_meeting(x,y,obj_player))
	{
		if(global.pontos >= global.meta01)
			{
				image_blend = c_purple;
				draw_text(x,y+96,"Press ENTER");
			}
	}