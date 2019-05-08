/// @description Insert description here
// You can write your code in this editor




hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
hit_X_offset = + 0;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
hit_Y_offset = + 0;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
hit_depth = 0;                  // EFFECT DEPTH LAYER
hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
hit_SFX_Prio = 0;               // TWEAK HIT SFX PRIORITY
destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
destroy_SFX_Prio = 0;           // TWEAK DESTROY SFX PRIORITY
time_to_destruct = 0.00;			// TIME TO EXPLODE
//image_angle = 90;
//direction = 90;
damage_value = 0;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
destruct_distance = 0;       // SELF DESTRUCT DISTANCE
pierce = false;                 // DOES WEAPON pierce?
homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
track_range = 0;	// max homing track range to latch onto enemy/player
//beep = false;
hp = 0;
z_climbrate = 0.00;
z_visualrate = 0.00
scale_min_threshold = 0.0;
scale_max_threshold = 0.0;
doHorizontalMissileStuffs = false;
doVerticalMissileStuffs = false;
ground_launched = false;
hittable = false;
destructable = false;
//secondary_stage = 0;


