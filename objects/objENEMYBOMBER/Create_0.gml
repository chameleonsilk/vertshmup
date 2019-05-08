/// @description ENEMY SPAWNED
hittable = false;
destructable = false;
image_xscale = 1.75;
image_yscale = 1.75;
//state = "Entrance";
velocity = 1;

phase = 0;
destroyedparts = 0
//depth = 200
current_phase = 0;
phase_length = 100;
freezespawns = true;
start_time = time;
hold_fire = true;

	pellet_amount = 0
	angle_change = 15
	saved_angle = 0
	x_offset = 0
	y_offset = 0
	
		velocity = 0		// turrets velocity along the path (should match the parents)
	fired = false	// variable
	behavior = ""		// use various specific customized pathing
	state = ""			// set the state of the enemy
	weapon_fire_rate = 0		// set rate of fire
	image_speed = 1
	hp = 500			// the enemies health
	hittable = false		// is it hittable or do bullets fly over it
	destructable = false	// can it be destroyed
	score_tally = 0	// can it be destroyed
	rank_tally = 0	// can it be destroyed
	weapon_min_range = 0
	weapon_max_range = 0
	weapon_sfx = 0
	weapon_velocity = 0
	shell_type = ""	// "PELLET", "MISSILE"
	weapon_mode = "" // "AIR" or "GROUND"
	weapon = SpriteBOAT
	weapon_behavior = ""
	//enemy_path = path_add();
	pellet_amount = 0
	angle_change = 0
	saved_angle = 0
	x_offset = 0
	y_offset = 0
	
	
	y = y -480
	
	

	
	//weapon = SpriteENEMYBULLET2
//

	
if (freezespawns = true) {
audio_stop_all()
audio_play_sound(BossM, 1, true)	
}
	
		
Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTAILTURRET1,  x, y + 585, -900, sway, 1, path_action_reverse,false,1,"SPIN",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTAILTURRET1,  x + 80, y + 40, -900, sway, 1, path_action_reverse,false,1,"SPIN",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTAILTURRET1,  x - 80, y + 40, -900, sway, 1, path_action_reverse,false,1,"SPIN",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTAILTURRET1,  x - 205, y + 105, -900, sway, 1, path_action_reverse,false,1,"SPIN",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTAILTURRET1,  x + 205, y + 105, -900, sway, 1, path_action_reverse,false,1,"SPIN",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTURRET2, x + 100, y + 15, -900, sway, 1, path_action_reverse,false,3,"pinpoint rocket", 50, true, true);		
Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTURRET2, x - 100, y + 15, -902, sway, 1, path_action_reverse,false,3,"pinpoint rocket", 50, true, true);		
//Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTURRET2, x + 100, y + 150, -901, sway, 1, path_action_reverse,false,1,"pinpoint rocket", 15, true, true);		


			
		
			
			
			//Create_Turret(objENEMYBOMBER, objTURRET4, -90, 50, -900, "part7L");
			//Create_Turret(objENEMYBOMBER, objTURRET4, -70, 40, -900, "part8L");
			//Create_Turret(objENEMYBOMBER, objTURRET4, - 50, 30, -900, "part9L");
	
	//Create_Turret(objENEMYBOMBER, objTURRET4, 80, 30, -900, "part10R");
	//Create_Turret(objENEMYBOMBER, objTURRET4, 100, 40, -900, "part10R");
	//Create_Turret(objENEMYBOMBER, objTURRET4, 120, 50, -900, "part10R");
	//Create_Turret(objENEMYBOMBER, objTURRET4, 140, 60, -900, "part10R");
	//Create_Turret(objENEMYBOMBER, objTURRET4, -105, -205, -900, "part9");
	//Create_Turret(objENEMYBOMBER, objTURRET4, 150, -200, -900, "part11");
	//Create_Turret(objENEMYBOMBER, objTURRET4, -155, -200, -900, "part10");
	//Create_Turret(objENEMYBOMBER, objROCKETL, 0, -200, -900, "part12");
	//Create_Turret(objENEMYBOMBER, objROCKETL, 205, -200, -900, "part13");
	
	
	
	path_start(sway,velocity, path_action_restart, 0);





