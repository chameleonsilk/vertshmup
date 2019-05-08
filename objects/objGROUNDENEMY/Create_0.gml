	velocity = 0		// turrets velocity along the path (should match the parents)
	fired = false	// variable
	behavior = ""		// use various specific customized pathing
	state = ""			// set the state of the enemy
	weapon_fire_rate = 0		// set rate of fire
	image_speed = 1
	hp = 0			// the enemies health
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
	enemy_path = path_add();
	anim_helper = false;
	image_speed = 2;
	vspeed = 1;
	y = y - 50;
image_blend = make_colour_hsv(0, (irandom_range(50,80)), (irandom_range(128,255)));
draw_self()






