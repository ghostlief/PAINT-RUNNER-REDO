/// Prints out global variables for the player
switch(room)
{
	case rm_game:	
		if (room == rm_game)
		{
			draw_set_font(game_font);

			draw_text(8, 8, "Level " + string(global.current_level));
			draw_set_halign(fa_right);

			draw_text(8, 8, "Health: " + string(global.player_health));
			draw_set_halign(fa_right);

			draw_text(8, 8, "Keys: " + string(global.keys));
			draw_set_halign(fa_right);
		}
	case rm_start:
		draw_set_halign(fa_center);
			var c = c_yellow;
			draw_text_transformed_color(
				room_width/2, 100, "PAINT RUNNER", 
				3, 3, 0, c,c,c,c, 1
			);
		draw_text(
			room_width/2, 200,
			@"

UP: move
LEFT/RIGHT: change direction
SPACE: jump

>> PRESS ENTER TO START <<" 
		);
		draw_set_halign(fa_left);
		break;
		
}