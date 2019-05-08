/// @description POLL UPDATE FOR MISSILE

// EDITABLE STUFF BELOW
var damage_value = 50;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
var destruct_distance = 50;         // SELF DESTRUCT DISTANCE
//var object_to_check = objPLAYER;     // OBJECT TO CHECK
var score_increase = 5;             // SET SCORE OF THIS OBJECTS DESTRUCTION
var hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
var destroy_GFX = objEXPLOSION1;        // GFX EFFECT WHEN ENEMY DIES
var hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
var hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
var hit_depth = 1;                  // EFFECT DEPTH LAYER
var hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
var hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
var destroy_SFX = Explosion;        // SFX FOR DESTRUCTION
var destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
var pierce = false;                 // DOES WEAPON pierce?
var homing = false;                 // DOES WEAPON HOME ON ENEMY
var track_range = 350;
var time_to_destruct = 1;			// TIME TO EXPLODE
// END OF EDITABLE STUFFS
var beep = false;
var z_climbrate = 0.01
var z_visualrate = 0.01;
var scale_min_threshold = 0.5
var scale_max_threshold = 1.0
if (alarm[0] < 0) 
{
		//image_alpha += 0.01;
		image_xscale -= z_climbrate;
		image_yscale -= z_climbrate;
alarm[0] = room_speed * z_visualrate
}

image_angle = direction
    
	if (image_xscale > scale_min_threshold) && (image_xscale < scale_max_threshold) {
var object_to_check = objPLAYER;    // OBJECT TO CHECK
AI_Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
	}

	if (image_xscale < scale_min_threshold) && (direction > 1) && (direction < 179) { 
speed -= 0.10
	}
	
	if (direction >= 181) && (direction <= 359) { 
speed += 0.10
	}



