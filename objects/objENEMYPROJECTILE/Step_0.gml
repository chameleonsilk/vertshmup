/// @description Insert description here
// You can write your code in this editor
image_angle = direction
if (image_xscale > scale_min_threshold) && (image_xscale < scale_max_threshold) {	
	var object_to_check = objPLAYER;    // OBJECT TO CHECK
	if instance_exists(object_to_check) {
	AI_Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}
}

if (alarm[0] <= 0) 
{
alarm[0] = room_speed * z_visualrate
}

if (image_xscale <= scale_min_threshold) {//this breaks vertical missiles
	//homing = 0 //this breaks vertical missiles
}//this breaks vertical missiles
	


if (doHorizontalMissileStuffs = true) {
	if (image_xscale < scale_min_threshold) && (direction > 0) && (direction < 180) { 
speed -= 0.10
	}
	if (direction > 180) && (direction < 270) { 
speed += 0.10
	}
}

if (doVerticalMissileStuffs = !true) && (ground_launched = false)
{
	if (image_xscale < 0.01) {
	instance_destroy()
	}
}

if (y <= -1) {
instance_destroy()	
}

if (y >= 1440) {
instance_destroy()	
}

if (x >= 481) {
instance_destroy()	
}

if (x <= -1) {
instance_destroy()	
}

if (destructable = true) && (hp <= 0) {
instance_destroy()	
}
	

