// FUNCTION TO DUMP A MAPFILE WITH ALL 1 IN POSITIONS

var tile_height = 40
var tile_width = 40
var screen_horizontal_max = 12  // 12 tiles wide
var screen_vertical_max = 32 // 16 tiles down
var next_line_down

var parse_number_right, file, 
var tile_value = []
file = file_text_open_write("quickdump.txt");
for (next_line_down = 0; next_line_down < screen_vertical_max;)
																{
	for (parse_number_right = 0; parse_number_right < screen_horizontal_max + 1; parse_number_right += 1)
																{
	tile_value[parse_number_right] = 3;
   file_text_write_real(file, tile_value[parse_number_right]);
   
	if (parse_number_right = screen_horizontal_max) {
		file_text_writeln(file);
		next_line_down += 1
													}
													} 
		
		if (next_line_down < screen_vertical_max) {
							parse_number_right = 0;
												}
			
													  
}

file_text_close(file);
