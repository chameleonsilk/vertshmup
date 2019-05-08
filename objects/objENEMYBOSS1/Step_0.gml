
/// @description STATE BASED AI


	
	
	if (behavior = "Sway") {
		if (state = "Off_Screen") && (y >= -200) {
			state = "On_Screen"
			checktime = time - start_time
	image_xscale = 1.75
	image_yscale = 1.75
		sway = path_add();
	path_insert_point(sway, 0, 240, -200, 100);
	path_insert_point(sway, 1, 240, 200, 200);
	path_insert_point(sway, 2, 0,150, 100);
	path_insert_point(sway, 3, 240,200, 100);
	path_insert_point(sway, 4, 480,150 , 100);
	path_insert_point(sway, 5, 240, 175, 100);
	path_insert_point(sway, 6, 0, 200, 100);
	path_insert_point(sway, 7, 240, 175, 100);
	path_insert_point(sway, 8, 0,150, 100);
	path_insert_point(sway, 9, 240,200, 100);
	path_insert_point(sway, 10, 480,150 , 100);
	path_insert_point(sway, 11, 240, 175, 100);
	path_insert_point(sway, 12, 0, 200, 100);
	path_insert_point(sway, 13, 240, 175, 100);
	path_insert_point(sway, 14, 0,150, 100);
	path_insert_point(sway, 15, 240,200, 100);
	path_insert_point(sway, 16, 480,150 , 100);
	path_insert_point(sway, 17, 240, 175, 100);
	path_insert_point(sway, 18, 0, 200, 100);
	path_insert_point(sway, 19, 240, 175, 100);
	path_insert_point(sway, 20, 0, 200, 100);
	path_insert_point(sway, 21, 240, 175, 100);
	path_insert_point(sway, 22, 0,150, 100);
	path_insert_point(sway, 23, 240,200, 100);
	path_insert_point(sway, 24, 480,150 , 100);
	path_insert_point(sway, 25, 240, 175, 100);
	path_insert_point(sway, 26, 0, 200, 100);
	path_insert_point(sway, 27, 240, 175, 100);
	path_insert_point(sway, 28, 0, 150, 100);
	path_insert_point(sway, 29, 240, 200, 100);
	path_insert_point(sway, 30, 480, 150 , 100);
	path_insert_point(sway, 31, 240, 175, 100);
	path_insert_point(sway, 32, 0, 200, 100);
	path_insert_point(sway, 33, 240, 175, 100);
	path_speed = 1
	
	Ultimate_Turret_Gen(objENEMYBOMBER, objTURRET, SpriteTAILTURRET1,  x, y + 185, -900, sway, 1, path_action_reverse,false,1,"bullet",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOSS1, objTURRET, SpriteTAILTURRET1,  x + 80, y + 40, -900, sway, 1, path_action_reverse,false,1,"spin",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOSS1, objTURRET, SpriteTAILTURRET1,  x - 80, y + 40, -900, sway, 1, path_action_reverse,false,1,"spin",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOSS1, objTURRET, SpriteTAILTURRET1,  x - 205, y + 105, -900, sway, 1, path_action_reverse,false,1,"spin",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOSS1, objTURRET, SpriteTAILTURRET1,  x + 205, y + 105, -900, sway, 1, path_action_reverse,false,1,"spin",2, true, true);		
Ultimate_Turret_Gen(objENEMYBOSS1, objTURRET, SpriteTURRET2, x + 100, y + 15, -900, sway, 1, path_action_reverse,false,3,"pinpoint rocket", 50, true, true);		
Ultimate_Turret_Gen(objENEMYBOSS1, objTURRET, SpriteTURRET2, x - 100, y + 15, -902, sway, 1, path_action_reverse,false,3,"pinpoint rocket", 50, true, true);		
path_start(sway, 1, path_action_stop, 0)
	}
	}


		//hittable = true
		//destructable = true
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
	
	if (behavior = "Sway") {
if (phase > 0) {
//hold_fire = false	
}

if (phase = 0) {
		if (checktime > 400) {
			hold_fire = false;
	phase += 1
	}
	}

	
	if (phase = 1) {
			if (alarm[0] < 0) {
	alarm[0] = room_speed * 4;;

		image_blend = make_colour_hsv(40, 10, 255);
	}
	}
	
	
	if (phase = 2) {

		if (alarm[1] < 0) {
		alarm[1] = room_speed * 4;

		image_blend = make_colour_hsv(0, 100, 255);
		}
		}
	
	if (hp <= 0) and (destructable = true) {
	Powerup_Generator(1000,"Air")
	instance_destroy()
	}
	
	if (destroyedparts = 6)
	{
	instance_destroy()	
	destroyedparts = 0
	}
	
	
	
	
	
	
	//if (y <= 630) {
	//if instance_exists(objPLAYER) {
	//var distance_player = distance_to_object(objPLAYER) 
//	if (fired = true) {
//	if (alarm[0] < 0) {
//		alarm[0] = weapon_fire_rate
//		if (distance_player >= weapon_min_range) && (distance_player <= weapon_max_range) { // && (objPLAYER.y >= y + 30) {
//		Ultimate_Bullet_Gen(objENEMY1, weapon, shell_type, weapon_velocity, pellet_amount, angle_change, weapon_mode, x + x_offset, y + y_offset, 0, 0, VulcanFire, -900, weapon_behavior, objENEMYPROJECTILE, saved_angle)
//		saved_angle += angle_change
//			if (saved_angle > 360) {
//			saved_angle = 0	
//			}
//		}
//	}
	
	
	//}
	
	//	}
	//	}
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
		











