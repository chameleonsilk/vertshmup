// FUNCTION TO OPEN A MAP FILE THAT WAS FORMATTED CORRECTLY
var cell_x, cell_y, tile_object, cell_depth
var parse_number_right, datafile, 
tile_data = 0
cell_x = 0
cell_y = 640
cell_depth = 194
//tile_to_draw = 1

var tile_height = 40
var tile_width = 40
var screen_horizontal_max = 12  // 12 tiles wide
var screen_vertical_max = 64// 16 tiles down
var next_line_down


//datafile = file_text_open_read(argument0);
for (next_line_down = 1; next_line_down <= screen_vertical_max;)
																{
	for (parse_number_right = 1; parse_number_right < screen_horizontal_max + 1; parse_number_right += 1)
	//show_message("BEFORE" + string(tile_data))							
	{
	//tile_data = 111;				// read the number in the map file and store it
	//Determine_Tile(tile_data)				// determine the tile and return the value to tile_object
	
	tile_to_draw = SpriteOCEANWAVES				// determine the tile and return the value to tile_object
	speed_of_image = choose (1,2,3)	
	image_start = choose(0,1,2,3,4,5,6,7,8,9,10,11,12)
	Ultimate_Tile_Gen(cell_x, cell_y, cell_depth, objTILE) // use the Draw_Tile script to place the tile
	with objTILE {
	
	//image_blend = make_colour_hsv(0, (irandom_range(75,80)), (irandom_range(251 ,255)));
	
	}
	//show_message("AFTER" + string(tile_data))
	cell_x += tile_width
	if (parse_number_right = screen_horizontal_max) {
//		file_text_readln(datafile);
		next_line_down += 1
		cell_y -= tile_height 
													}
													} 
		
		if (next_line_down < screen_vertical_max) {
							parse_number_right = 0;
							cell_x = 0
												}
			
					if (next_line_down = screen_vertical_max) {	
						if (stage = 0) {
		next_map_queue = "stage_0.txt";
		//
						}		
			
			
			if (stage = 1) {
		next_map_queue = "stage_0.txt";
		audio_stop_all()
audio_play_sound(Stage1M,-1,true)
			}
			
						if (stage = 2) {
		next_map_queue = "stage_2.txt";
				audio_stop_all()
audio_play_sound(Stage2M,-1,true)
			}
					
			if (stage = 3) {
		next_map_queue = "stage_3.txt";
						audio_stop_all()
audio_play_sound(Stage3M,-1,true)
			}
			
			if (stage = 4) {
		next_map_queue = "stage_4.txt";
						audio_stop_all()
audio_play_sound(Stage4M,-1,true)
			}
			
			if (stage = 5) {
		next_map_queue = "stage_5.txt";
						audio_stop_all()
audio_play_sound(Stage5M,-1,true)
			}
		//next_obj_queue = "obj_2a.txt";
		//next_enemy_queue = "enemy_blank.txt";
		//next_enemy_queue = "enemy_2a.txt"
		}
													  
}

instance_create_depth(x + 40,y + 10,0, objKEYS)

//show_message(string(tile_data))

//file_text_close(datafile);