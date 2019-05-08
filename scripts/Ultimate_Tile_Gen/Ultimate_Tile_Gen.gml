	//Ultimate_Tile_Gen(objENEMY, SpriteENEMY1, x, y, 3, SpriteENEMYBULLET2, 80, 500, "Off_Screen", "Line Down 180", 5, 5, 1, 10, 10, -200)
//Draw_Tile(cell_x, cell_y, cell_depth, tile_object) basic arguments that could be built on


	object_set_sprite(objTILE, tile_to_draw) // set the objects sprite correctly before spawning a unique version of it
	var tile_object = instance_create_depth(argument0, argument1, argument2, argument3)//Draw_Tile(cell_x, cell_y, cell_depth, tile_object) basic arguments that could be built on
	

	with tile_object // now with that newly created instance we want to set the object paramaters
	  {
		 // tile_object.vspeed = 10
	  }