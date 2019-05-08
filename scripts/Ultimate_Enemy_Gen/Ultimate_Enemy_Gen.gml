	//Ultimate_Enemy_Gen(objENEMY, SpriteENEMY1, x, y, 3, SpriteENEMYBULLET2, 80, 500, "Off_Screen", "Line Down 180", 5, 5, 1, 10, 10, -200)
	var object_type = argument0 // object type
	var sprite_used = argument1 // sprite name
	var xloc = argument2 // inital x pos
	var yloc = argument3 // inital y pos
	var hitpoints = argument4 // integer
	var weapon = argument5 // sprite of weapon
	var weapon_min_range = argument6 // integer
	var weapon_max_range = argument7	// integer
	var state = argument8  //string "Off_Screen, On_Screen"
	var behavior = argument9  //string "Line Down 0", "Line Down 180", Stop and Stare"
	var velocity = argument10 // integer
	var weapon_velocity = argument11 // integer
	var weapon_fire_rate = argument12 // rate of fire
	var score_tally = argument13 // score increase
	var rank_tally = argument14 // rank increase on death
	var drawdepth = argument15 // draw depth


	object_set_sprite(argument0, argument1) // set the objects sprite correctly before spawning a unique version of it
	var enemy_object = instance_create_depth(argument2, argument3, argument15, argument0)

	with enemy_object // now with that newly created instance we want to set the object paramaters
	  {
		enemy_object.velocity = argument10		// velocity 
		enemy_object.behavior = argument9		// use various specific customized pathing
		enemy_object.state = argument8			// set the state of the enemy
		enemy_object.hp = argument4			// the enemies health
		enemy_object.score_tally = argument13	// score increase when it dies
		enemy_object.rank_tally = argument14	// rank increase when it dies
		enemy_object.drawdepth = argument15	// rank increase when it dies
		enemy_object.x = argument2			// set inital x pos
		enemy_object.y = argument3			// set inital y pos
		enemy_object.sprite_used = argument1 // pass the sprite for next phase
		enemy_object.weapon = argument5		// set weapon sprite
		enemy_object.weapon_fire_rate = argument12		// set rate of fire
		enemy_object.weapon_min_range = argument6	// can it be destroyed
		enemy_object.weapon_max_range = argument7	// can it be destroyed
		enemy_object.weapon_velocity = argument11		// set rate of fire
		Determine_Weapon(weapon)
	  }