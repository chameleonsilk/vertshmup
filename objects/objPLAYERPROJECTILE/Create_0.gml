/// @description Insert description here
// You can write your code in this editor



for_enemy = false;
hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
hit_depth = -2001;                  // EFFECT DEPTH LAYER
hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
time_to_destruct = 0.25;			// TIME TO EXPLODE
// END OF EDITABLE STUFFS
//image_angle = 0
//speed = 1
damage_value = 1;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
destruct_distance = 0;       // SELF DESTRUCT DISTANCE
pierce = false;                 // DOES WEAPON pierce?
homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
track_range = 0		// max homing track range to latch onto enemy/player
z_climbrate = 0.00;
z_visualrate = 0.00
scale_min_threshold = 0.0;
scale_max_threshold = 0.0;
doBombStuffs = false;
isMissile = false;
isPellet = true;
doHorizontalMissileStuffs = false;
ground_launched = false;
hittable = false;
destructable = false;
image_xscale = 1;
image_yscale = 1;


