/// Prints out global variables for the player
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