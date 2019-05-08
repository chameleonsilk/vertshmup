//tile_to_draw = 0
//tile_to_draw =  objTILE
if (argument0) = 1 {
	tile_to_draw = SpriteOCEANWAVES
	image_start = choose(0,1,2,3,4,5,6,7,8,9,10,11,12)
	speed_of_image = choose (1,2,3)	
	if (image_start = 0) {
	speed_of_image = 0	
	}
	}
	
	if (argument0) = 10 {
		tile_to_draw = SpriteDIRT
	image_start = 0
	speed_of_image = 0
	}
	
	if (argument0) = 15 {
			tile_to_draw = SpriteGRASSDIRT
	image_start = 0
	speed_of_image = 0
	}
	
		if (argument0) = 20 {
			tile_to_draw = SpriteGRASS
	image_start = 0
	speed_of_image = 0
	}
	
	if (argument0) = 25 {
	//tile_to_draw =  objWATER
	}
	
			if (argument0) = 30 {
			tile_to_draw = SpriteTREES
	image_start = choose(0,1,2,3)
	speed_of_image = 0
	}
	
				//if (argument0) = 222 {
	//tile_to_draw =  objLAND_TREE
//	}

