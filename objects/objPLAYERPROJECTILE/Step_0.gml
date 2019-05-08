/// @description Insert description here
// You can write your code in this editor



if (alarm[0] <= 0) 
{
alarm[0] = room_speed * z_visualrate
}






if (isMissile = true) {
	var object_to_check = objENEMY;    // OBJECT TO CHECK
if instance_exists(object_to_check) {
Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}
}

if (isPellet = true) {
	image_angle = direction;
var object_to_check = objENEMY;    // OBJECT TO CHECK
if instance_exists(object_to_check) {
Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}

var object_to_check = objGROUNDENEMY;    // OBJECT TO CHECK
if instance_exists(object_to_check) {
Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}

var object_to_check = objENEMYBOSS1;    // OBJECT TO CHECK
if instance_exists(object_to_check) {
Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}

var object_to_check = objTURRET;    // OBJECT TO CHECK
if instance_exists(object_to_check) {
Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}

var object_to_check = objENEMYPROJECTILE;    // OBJECT TO CHECK
if instance_exists(object_to_check) && (object_to_check.hittable) = true {
Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}
}

if (doBombStuffs = true) {
	//image_angle = direction;
//	var object_to_check = objGROUNDENEMY;    // OBJECT TO CHECK
//	if instance_exists(object_to_check) {
//Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}
//}



if (y <= 40) {
instance_destroy()	
}

if (x >= 481) {
instance_destroy()	
}

if (x <= 0) {
instance_destroy()	
}

if (y >= 2640) {
instance_destroy()	
}



