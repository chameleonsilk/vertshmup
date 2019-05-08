// FUNCTION TO OPEN A MAP FILE THAT WAS FORMATTED CORRECTLY
var cell_x, cell_y, enemy_data, cell_depth
var parse_number_right, enemyfile

enemy_data = 0

cell_x = 0
cell_y = argument1
cell_depth = -200
//tile_to_draw = 1

var tile_height = 40
var tile_width = 40
var screen_horizontal_max = 11  // 12 tiles wide
var screen_vertical_max = 36// 16 tiles down
var next_line_down = 0

if (freezespawns != true) {
enemyfile = file_text_open_read(argument0);

for (next_line_down = 0; next_line_down < screen_vertical_max;)
																{
	for (parse_number_right = 0; parse_number_right < screen_horizontal_max + 1; parse_number_right += 1)
	
	{
	enemy_data = file_text_read_real(enemyfile);

	

	
//	if (enemy_data <= 9) {
	if (enemy_data != 0) {
	Determine_Spawn(enemy_data, cell_x, cell_y,)
}	
	

	//Draw_Tile(cell_x, cell_y, cell_depth, enemy_to_draw) // use the Draw_Tile script to place the tile


	cell_x += tile_width
	if (parse_number_right = screen_horizontal_max) {
		file_text_readln(enemyfile);
		next_line_down += 1
		cell_y -= tile_height 
													}
													} 
		
		if (next_line_down < screen_vertical_max) {
							parse_number_right = 0;
							cell_x = 0
												}
		if (next_line_down = screen_vertical_max) {	
					if (next_line_down = screen_vertical_max) {	
		//	
		next_enemy_queue = file_text_read_string(enemyfile);
		file_text_readln(enemyfile);	
		
		}
		}
}


file_text_close(enemyfile);
}