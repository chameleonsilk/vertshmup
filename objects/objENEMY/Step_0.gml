

/// @description STATE BASED AI
if (path_index = -1) {
		if (behavior = "Stop and Stare") {
	if (state = "Off_Screen") && (y >= -1) {
	state = "On_Screen"	
	instance_create_depth(x, 40, depth, objTHREAT)	
	var x_init = x
	var y_stop_and_stare = 480
	var leave_area = -1200
	var stop_and_stare = path_add();
	path_insert_point(stop_and_stare, 0, x_init, -100, 100);
	path_insert_point(stop_and_stare, 1, x_init, y_stop_and_stare, 10);
	path_insert_point(stop_and_stare, 2, x_init, y_stop_and_stare + 30, 3);
	path_insert_point(stop_and_stare, 3, x_init, leave_area, 400);
	path_start(stop_and_stare, 4, path_action_restart, 0);	
	//		show_message(string(behavior))
	image_xscale = 2
	image_yscale = 2
	image_angle = direction
	}
	}
	
	if (behavior = "Line Down 180") {	
	if (state = "Off_Screen") && (y >= -1) {
	state = "On_Screen"	
	instance_create_depth(x, 40, depth, objTHREAT)	
	image_blend = make_colour_hsv(0, (irandom_range(0,10)), (irandom_range(255,255)));
	var x_init = x //random_range(120,360)
	var y_init = y
	var leave_area = 1200
	var directed_attack = path_add();

	path_set_precision(directed_attack, 2);
	path_set_kind(directed_attack,1)
	path_set_closed(directed_attack,0)

	path_insert_point(directed_attack, 0, x_init, -100, 100);
	path_insert_point(directed_attack, 1, x, y + 80, 50);
	if (instance_exists(objPLAYER) = true) {
	path_insert_point(directed_attack, 2, (choose (objPLAYER.x - (random(100) / 2), objPLAYER.x + (random(100) / 2))), (choose (objPLAYER.y - (random(20) / 2), objPLAYER.y + (random(20) / 2))), 80);
	path_insert_point(directed_attack, 3, 240, leave_area, 100);
	}
	if (instance_exists(objPLAYER) != true) {
	path_insert_point(directed_attack, 2, 240, leave_area, 300);
	}
	//	show_message(string(behaviour))
	
	path_start(directed_attack, 6, path_action_stop, 0);	
	}
	}
	
	
	if (behavior = "Line Down 0") {
	if (state = "Off_Screen") && (y >= -1) {
	state = "On_Screen"	
	instance_create_depth(x, 40, depth, objTHREAT)	
	image_angle = 90
	vspeed = 1
	hspeed = (choose (-1,1))
		image_xscale = 2.25
		image_yscale = 2.25
	var x_init = x //random_range(20,460)
	var y_init = y
	var leave_area = 1200
	var directed_attack = path_add();

	path_set_precision(directed_attack, 7);
	path_set_kind(directed_attack,1)
	path_set_closed(directed_attack,0)

	path_insert_point(directed_attack, 0, x_init, y_init, 100);
	path_insert_point(directed_attack, 1, x, y + 40, 50);
	if (instance_exists(objPLAYER) = true) {
	path_insert_point(directed_attack, 2, (choose (objPLAYER.x - (random(100) / 2), objPLAYER.x + (random(100) / 2))), (choose (objPLAYER.y - (random(20) / 2), objPLAYER.y + (random(20) / 2))), 80);
	path_insert_point(directed_attack, 3, 240, leave_area, 100);
	}
	if (instance_exists(objPLAYER) != true) {
	path_insert_point(directed_attack, 2, 240, leave_area, 300);
	}
	//	show_message(string(behaviour))
	
	path_start(directed_attack, 5, path_action_stop, 0);	
	}
	}

if (behavior = "Across From Right") {
	if (state = "Off_Screen")  && (y >= -1) {
		instance_create_depth(440, 200, depth, objTHREAT)	
	x = 800;
	state = "On_Screen";
	image_angle = 180;
	hspeed = -3;
	vspeed = 2;
	
	}
	}
	
	if (behavior = "Diagonal Across From Right") {
	if (state = "Off_Screen")  && (y >= -1) {
	x = 620;
	y = 700;
	state = "On_Screen";
	image_angle = 90;
	hspeed = -3;
	vspeed = -2;
	instance_create_depth(20, 0, depth, objTHREAT)	
	}
	}
	
	if (behavior = "Diagonal Across From Left") {
	if (state = "Off_Screen")  && (y >= -1) {
	x = -180;
	y = 700;
	state = "On_Screen";
	image_angle = 90;
	hspeed = 3;
	vspeed = -2;
	instance_create_depth(20, 100, depth, objTHREAT)	
	}
	}
	
	if (behavior = "Across From Left") {
	if (state = "Off_Screen") && (y >= -1) {
	state = "On_Screen";
	x = -160;
	image_angle = 0;
	hspeed = 3;
	vspeed = 2;
	instance_create_depth(40, 100, depth, objTHREAT)	
	}
	}
	
	if (behavior = "From Behind") {
	if (state = "Off_Screen") && (y >= -1) {
	y = 800;
	state = "On_Screen";
	instance_create_depth(x, 600, depth, objTHREAT)	
	image_angle = 90;
	vspeed = -0.5;
	}
	}

	if (behavior = "Stop and Stare") {
	image_angle = direction	
	}
	
	if (behavior = "Line Down 180") {
	image_angle = direction
	}
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
}


if (y <= 630) {
	if instance_exists(objPLAYER) {
	var distance_player = distance_to_object(objPLAYER) 
	if (fired = true) {
	if (alarm[0] > 0) { 	image_blend = make_colour_hsv(0, (irandom_range(60,64)), (irandom_range(252,255)));}
	if (alarm[0] < 0) {
		alarm[0] = weapon_fire_rate
		if (distance_player >= weapon_min_range) && (distance_player <= weapon_max_range) { // && (objPLAYER.y >= y + 30) {
		Ultimate_Bullet_Gen(objENEMY, weapon, shell_type, weapon_velocity, pellet_amount, angle_change, weapon_mode, x + x_offset, y + y_offset, 0, 0, VulcanFire, -900, weapon_behavior, objENEMYPROJECTILE, saved_angle)
		saved_angle += angle_change
			if (saved_angle > 360) {
			saved_angle = 0	
			}
		}
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


if (hp <= 0) and (destructable = true) {
instance_destroy()
Powerup_Generator(score_tally,"Air")
}

if (y <= -2250) {
	instance_destroy()
	}
	
	if (y >= 2250) {
	instance_destroy()
	}
	
		if (x >= 2250) {
	instance_destroy()
	}
	
		if (x <= -2250) {
	instance_destroy()
	}
	
	
if (y >= 40) {
	fired = true
}

draw_self()





