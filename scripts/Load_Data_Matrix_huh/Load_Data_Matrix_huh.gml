// FUNCTION TO OPEN A MAP FILE THAT WAS FORMATTED CORRECTLY
var cell_x, cell_y, tile_data, cell_depth
var parse_number_right, datafile
tile_data = 0

cell_x = 0
cell_y = argument1
cell_depth = 194
//tile_to_draw = 1

var tile_height = 40
var tile_width = 40
var screen_horizontal_max = 11 // 12 tiles wide
var screen_vertical_max = 36 // 16 tiles down
var next_line_down

datafile = file_text_open_read(argument0);

for (next_line_down = 0; next_line_down < screen_vertical_max;) {
	for (parse_number_right = 0; parse_number_right < screen_horizontal_max + 1; parse_number_right += 1)
	{
	tile_data = file_text_read_real(datafile);				// read the number in the map file and store it
	
	if (tile_data <> 0) {
	Determine_Tile(tile_data)				// determine the tile and return the value to tile_object
	Ultimate_Tile_Gen(cell_x, cell_y, cell_depth, objTILE) // use the Draw_Tile script to place the tile
	}
	cell_x += tile_width
	if (parse_number_right = screen_horizontal_max) {
		file_text_readln(datafile);
		next_line_down += 1
		cell_y -= tile_height 
													}
													} 
		
		if (next_line_down < screen_vertical_max) {
							parse_number_right = 0;
							cell_x = 0
												}
		if (next_line_down = screen_vertical_max) {	
		//	
		//next_map_queue = file_text_read_string(datafile);
		//file_text_readln(datafile);	
		//next_obj_queue = file_text_read_string(datafile);
		//file_text_readln(datafile);	
		//next_enemy_queue = file_text_read_string(datafile);
		}
}

file_text_close(datafile);