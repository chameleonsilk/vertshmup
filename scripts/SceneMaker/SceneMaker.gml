var tile_object = argument0
var depth_object = argument1
var tile_x_placement = argument2
var tile_y_placement = argument3
var world_chunk_width = argument4
var world_chunk_height = argument5
var looping_segment = argument6

var tile_width = 40
var tile_height = 40
var tile_x_dist =  world_chunk_width / tile_width
var tile_y_dist = world_chunk_height / tile_height

for (B = 1; B <= tile_y_dist;) {
for (I = 1; I <= tile_x_dist; I += 1) {
		  	  
instance_create_depth(argument2, argument3, argument1, argument0)

argument2 += tile_width
		if (argument2 >= world_chunk_width) {
			B += 1
			argument3 -= tile_height
			argument2  = tile_x_placement
		
			if (argument3 >= world_chunk_height) {
			//return	
			}
		}
}
}






