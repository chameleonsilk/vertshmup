/// @description POLL UPDATE FOR MISSILE

// EDITABLE STUFF BELOW
var damage_value = 50;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
var destruct_distance = 30;         // SELF DESTRUCT DISTANCE
var score_increase = 5;             // SET SCORE OF THIS OBJECTS DESTRUCTION
var hit_GFX = objEXPLOSION;        // EFFECT IF ENEMY GETS HIT
var destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
var hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
var hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
var hit_depth = 1;                  // EFFECT DEPTH LAYER
var hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
var hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
var destroy_SFX = Mute;        // SFX FOR DESTRUCTION
var destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
var pierce = false;                 // DOES WEAPON pierce?
var homing = false;                 // DOES WEAPON HOME ON ENEMY
var track_range = 150
var time_to_destruct = 0.25;			// TIME TO EXPLODE
// END OF EDITABLE STUFFS




var object_to_check = objGROUNDENEMY;
if instance_exists(object_to_check) {
Weapon_Collisions(object_to_check, damage_value, pierce, homing, destruct_distance, hit_GFX, hit_X_offset, hit_Y_offset, hit_depth, hit_SFX, hit_SFX_Prio, destroy_SFX, destroy_SFX_Prio, track_range, time_to_destruct)
}

