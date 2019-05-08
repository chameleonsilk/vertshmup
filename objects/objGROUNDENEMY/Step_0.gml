
/// @description STATE BASED AI

if (path_index = -1) {
	if (behavior = "Structure Scroll") {			
	if (state = "Off_Screen") && (y >= -300) {
	state = "On_Screen"	
		image_xscale = 3
		image_yscale = 3
		image_angle = 0
		vspeed = 1
	var x_init = x //random_range(20,460)
	var y_init = y
	var leave_area = 1200
	var scroll = path_add();

	path_set_precision(scroll, 7);
	path_set_kind(scroll,1)
	path_set_closed(scroll,0)

	path_insert_point(scroll, 0, x_init, y_init, 100);
	path_insert_point(scroll, 1, x, leave_area, 100);


	//path_start(scroll, 1, path_action_stop, 0);	
	}
	}
	
if (behavior = "Sub") {

		//image_speed = 0
	if (state = "Off_Screen") && (y >= -100) {
	state = "On_Screen"	
		image_index = 1
			image_xscale = 1.5
		image_yscale = 2.5
		direction = (choose (0, 90, 180, 270))
		vspeed = 1
		image_speed = 1
	//image_angle = 90
	
	//image_speed = 4
	var x_init = x //random_range(20,460)
	var y_init = y
	var leave_area = 1200
	var scroll = path_add();

	path_set_precision(scroll, 7);
	path_set_kind(scroll,1)
	path_set_closed(scroll,0)

	path_insert_point(scroll, 0, x_init, y_init, 100);
	path_insert_point(scroll, 1, x, leave_area, 100);


	//path_start(scroll, 1, path_action_stop, 0);	
	}
		if (state = "On_Screen") && (image_index >= 12) {
		image_speed = -1
		image_index = 12
		anim_helper = true
		}
	
	if (state = "On_Screen") && (anim_helper = true) {
		
		if (image_index <= 1) { 
		//vspeed = -5
		instance_destroy()
		}
	}
	
	
	//speed = 1
		direction = 270
	
	}
	
	
			if (behavior = "Tank") {

		
		//image_speed = 0
	if (state = "Off_Screen") && (y >= -100) {
	state = "On_Screen"	
			image_xscale = 0.5
		image_yscale = 0.5
		//image_angle = choose (0, 90, 180, 270)
		vspeed = 1
	//image_angle = 90
	image_speed = 4
	var x_init = x //random_range(20,460)
	var y_init = y
	var leave_area = 1200
	var scroll = path_add();

	path_set_precision(scroll, 7);
	path_set_kind(scroll,1)
	path_set_closed(scroll,0)

	path_insert_point(scroll, 0, x_init, y_init, 100);
	path_insert_point(scroll, 1, x, leave_area, 100);


	path_start(scroll, 1, path_action_stop, 0);	
	}
	}

			if (behavior = "Small Boat") {
		image_xscale = 0.35
		image_yscale = 0.35	
		//image_speed = 0
	if (state = "Off_Screen") && (y >= -100) {
		direction = choose (0, 90, 180, 270)
		image_angle = direction
		image_speed = 0
		
	state = "On_Screen"	
	var x_init = x //random_range(20,460)
	var y_init = y
	var leave_area = 1200
	var scroll = path_add();

	path_set_precision(scroll, 7);
	path_set_kind(scroll,1)
	path_set_closed(scroll,0)

	path_insert_point(scroll, 0, x_init, y_init, 100);
	path_insert_point(scroll, 1, x, leave_area, 100);


	path_start(scroll, 1, path_action_stop, 0);	
	
	enemy_path = path_add()

	}
	}
}
	

	
	

	//	if (behavior != "Structure Scroll") {
		//image_angle = direction;
	//	}
		hittable = true
		destructable = true
		//vspeed = 0
	if (scaling = true) {
		weapon_fire_rate = weapon_fire_rate // rankvalue; // interval with scaling
		weapon_max_range = weapon_max_range //+ rankvalue;
		weapon_min_range = weapon_min_range //- rankvalue;
		weapon_velocity = weapon_velocity
	}
	
		if (scaling = !true) {
		weapon_fire_rate = weapon_fire_rate
		weapon_max_range = weapon_max_range
		weapon_min_range = weapon_min_range
		weapon_velocity = weapon_velocity
	}

if (y <= 630) {
	if instance_exists(objPLAYER) {
	var distance_player = distance_to_object(objPLAYER) 
	if (fired = true) {
	if (alarm[0] < 0) {
		alarm[0] = weapon_fire_rate
		if (distance_player >= weapon_min_range) && (distance_player <= weapon_max_range) { // && (objPLAYER.y >= y + 30) {
		Ultimate_Bullet_Gen(objENEMY, weapon, shell_type, weapon_velocity, 0, 0, weapon_mode, x, y, 0, 0, VulcanFire, -900, weapon_behavior, objENEMYPROJECTILE, 0)
		//Ultimate_Bullet_Gen(objPLAYER, weapon, shell_type, weapon_velocity, 0, 0, weapon_mode, x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//var shooter = argument0; // object who is shooting
//var amount = argument1; // how many of them at once
//var class = argument2; // string of projectile "MISSILE", "PELLET"
//var velocity = argument3 ;// integer
//var accuracy_set_n1 = argument4; // dispersion min
//var accuracy_set_n2 = argument5; // dispersion max
//var weapon_type = argument6; // string "Air launched", "Ground Launched",
//var x_start = argument7;
//var y_start = argument8;
//var x_offset = argument9;  // offsets used only when more amount than 1
//var y_offset = argument10;
//var weapon_SFX = argument11;  // sfx to use
//var proj_depth = argument12;  // instance depth
//var behavior = argument13;  // advanced behavior code
//var object_used = argument14;  // advanced behavior code
//var bullet_angle = argument15; // bullet angle
		
		}
		}
}
}
}

if (hp <= 0) and (destructable = true) {
instance_destroy()
Powerup_Generator(score_tally,"Ground")
}

if (y <= -1250) {
	instance_destroy()
	}
	
if (y >= 40) {
	fired = true
}







