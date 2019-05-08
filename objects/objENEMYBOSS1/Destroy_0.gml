/// @description Insert description here
// You can write your code in this editor
freezespawns = false;
time = 0;
instance_create_depth(x,y + 50, -901, objEXPLOSION)
instance_create_depth(x - 50,y, -901, objEXPLOSION)
instance_create_depth(x + 50,y, -901, objEXPLOSION)
instance_create_depth(x,y - 50, -901, objEXPLOSION)
	
		if (stage = 1) {
	stage = 2
	next_map_queue = ("stage_2.txt")
					audio_stop_all()
audio_play_sound(Stage2M,-1,9)
}
else {
stage = 1;	
next_map_queue = ("stage_0.txt")
				audio_stop_all()
audio_play_sound(Stage1M,-1,9)
}