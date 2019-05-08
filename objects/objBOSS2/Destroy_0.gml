/// @description Insert description here
// You can write your code in this editor
freezespawns = false;
instance_create_depth(x,y + 50, -901, objEXPLOSION)
instance_create_depth(x - 50,y, -901, objEXPLOSION)
instance_create_depth(x + 50,y, -901, objEXPLOSION)
instance_create_depth(x,y - 50, -901, objEXPLOSION)
	ebshown = 0
	time = 0
	EB_destroyedparts = 0
	
		if (stage = 1) {
	stage = 2
	next_map_queue = ("stage_2.txt")
					audio_stop_all()
audio_play_sound(Stage2M,-1,9)
}
	//next_enemy_queue = ("enemy_1.txt")
	//next_enemy_queue = ("enemy_1.txt")

//Load_Data_Matrix(next_map_queue, 0)
//Load_Obj_Matrix(next_obj_queue, 0)
//Load_Enemy_Matrix(next_enemy_queue, 0)
	
	

	

	
else {
stage = 1;	
next_map_queue = ("stage_0.txt")
				audio_stop_all()
audio_play_sound(Stage1M,-1,9)
}
	
	
