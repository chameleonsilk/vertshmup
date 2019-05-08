//usage: Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, time_to_destruct, track_range, time_to_destruct)

var object_to_check = argument0;
var damage_value = argument1;
var pierce = argument2;
var homing = argument3;
var destruct_distance = argument4;
var hit_GFX = argument5;
var hit_X_offset = argument6;
var hit_Y_offset = argument7;
var hit_depth = argument8;
var hit_SFX = argument9;
var hit_SFX_Prio = argument10;
var destroy_SFX = argument11;
var destroy_SFX_Prio = argument12;
var track_range = argument13;
var time_to_destruct = argument14;

if alarm[0] < 0 {
	alarm[0] = room_speed * time_to_destruct
	}



if (homing != 0) {
	if (instance_exists(object_to_check))
			if  track_range >= (distance_to_object(object_to_check))
			{
			var closest_instance = instance_nearest(x,y, object_to_check)
			direction = Rotate(direction, point_direction(x, y, closest_instance.x, closest_instance.y), homing);
			}
			else {
			direction = direction}
} 



   
if instance_exists(object_to_check)
	{          // MAKE SURE INSTANCE EXISTS BEFORE CHECKING FOR DAMAGE TO IT
		hit = instance_place(x,y,object_to_check);          // SETTING HIT TO BE THE INSTANCE OF THE ENEMY WE WISH TO CHECK FOR COLLISION WITH
		if (object_to_check.hittable = true)
		{
			if (hit != noone)
			{                                 // IF HIT DOES NOT EQUAL NO ONE (IT HAS HIT SOMETHING)     
			hit.hp -= damage_value;                         // SET DAMAGE FOR THIS PROJECTILE
			
			
	if (object_to_check.hp > 0)
	{                 // CODE BLOCK FOR WHEN OBJECTS HP IS EQUAL OR MORE THAN ZERO (NOT DESTROYED)
	instance_create_depth(x + hit_X_offset, y + hit_Y_offset, hit_depth, hit_GFX);         // Place hit effect
    audio_play_sound(hit_SFX, hit_SFX_Prio, false)                                 // Play hit sfx
	}
	
	
	if (object_to_check.destructable = true)
		{
	    if (object_to_check.hp <= 0)
		{                 // CODE BLOCK FOR WHEN OBJECTS HP IS EQUAL OR LESS THAN ZERO (DESTROYED)
        audio_play_sound(destroy_SFX, destroy_SFX_Prio, false) // Play destroy SFX
		var randomized = random_range(0.75,2.5)
		var randomizeddeath = choose (SpriteEXPLOSION4, SpriteEXPLOSION5, SpriteEXPLOSION6)
		Ultimate_Explosions(randomized, randomizeddeath, noone)
		
		//instance_create_depth(x - 25, y - 25, hit_depth, objEXPLOSION);         // Place destroy effect	(I hardcoded in why?)
		}
				
			if (pierce != true)
			{                           // IF BULLET DOES NOT pierce THEN....
			instance_destroy();                             // Destroys the bullet because it has impacted an enemy object
			}
			}
		
	}
}
}

