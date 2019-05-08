	velocity = 0;		// turrets velocity along the path (should match the parents)
	fired = false;	// variable
	behavior = "";		// use various specific customized pathing
	state = "";			// set the state of the enemy
	weapon_fire_rate = 0;		// set rate of fire
	image_speed = 1;
	hp = 0;			// the enemies health
	hittable = false;		// is it hittable or do bullets fly over it
	destructable = false;// can it be destroyed
	score_tally = 0;	// can it be destroyed
	rank_tally = 0;	// can it be destroyed
	weapon_min_range = 0;
	weapon_max_range = 0;
	weapon_sfx = 0;
	weapon_velocity = 0;
	shell_type = "";	// "PELLET", "MISSILE"
	weapon_mode = "";// "AIR" or "GROUND"
	weapon = SpriteBOAT;
	weapon_behavior = "";
	enemy_path = path_add();
	pellet_amount = 0;
	angle_change = 0;
	saved_angle = 0;
	x_offset = 0;
	y_offset = 0;
	checktime = 0
	destroyedparts = 0;
	current_phase = 0;
phase_length = 100;
freezespawns = true;
start_time = time;
hold_fire = true;
phase = 0;
	vspeed = 1;
	//y = y - 150
	
image_blend = make_colour_hsv(0, (irandom_range(0,10)), (irandom_range(255,255)));
draw_self()






