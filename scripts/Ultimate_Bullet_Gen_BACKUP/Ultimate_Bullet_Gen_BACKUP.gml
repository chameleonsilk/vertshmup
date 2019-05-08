//Ultimate_Bullet_Gen
//(objPLAYER, 1, "PELLET", 3, 0, 0, "Air Launched", x, y, spriteENEMYBULLET2, 0, 0, VulcanFire, -900, "Dumb")
//Ultimate_Bullet_Gen
//(objPLAYER, SpritePLAYERBULLET, "PELLET", 30, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
var shooter = argument0; // object who is shooting
var weapon = argument1; // weapon sprite
var class = argument2; // string of projectile "MISSILE", "PELLET"
var velocity = argument3 ;// integer
var accuracy_set_n1 = argument4; // dispersion min
var accuracy_set_n2 = argument5; // dispersion max
var weapon_type = argument6; // string "Air launched", "Ground Launched",
var x_start = argument7;
var y_start = argument8;
var x_offset = argument9;  // offsets used only when more amount than 1
var y_offset = argument10;
var weapon_SFX = argument11;  // sfx to use
var proj_depth = argument12;  // instance depth
var behavior = argument13;  // advanced behavior code "DUMB"
var object_used = argument14;  // advanced behavior code
var bullet_angle = argument15; // bullet angle

if (argument6 = "AIR") {
	if (argument2 = "PELLET") {
			if (argument0 = objPLAYER) {
					if (argument13 = "DUMB") {
var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)
var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
this.image_angle = argument15
//this.image_angle = direction
this.direction = this.image_angle
this.speed = velocity;
//this.hspeed = horizontal_speed; // DO NOT TURN THIS ON FOR PLAYER CALCULATIONS
this.hit_GFX = objEXPLOSION2;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = 0;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = 0;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 1;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 0		// max homing track range to latch onto enemy/player
this.scale_min_threshold = 0.5;
this.scale_max_threshold = 1.5;
		audio_play_sound(argument11,0,0)				
		}
}
								
		if (argument0 = objENEMY) {	
			if (argument13 = "DUMB") {
		var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)
var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
this.image_angle = argument15
//this.image_angle = direction
this.direction = point_direction(x, y, objPLAYER.x + (choose (-5, +5)), objPLAYER.y + (choose (-5, +5)));
this.speed = velocity;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 10;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 0		// max homing track range to latch onto enemy/player
this.scale_min_threshold = 0.5;
this.scale_max_threshold = 1.5;
audio_play_sound(argument11,0,0)						
}	// END DUMB



			if (argument13 = "DUMB2") {
		var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)


for (var i = 0; i < 2; i += 1)
   {
   //draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
   var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
   //this.image_angle = argument15 - 15
//this.image_angle = direction
this.direction = point_direction(x, y, objPLAYER.x + (choose (-5, +5)), objPLAYER.y + (choose (-5, +5)));

this.speed = velocity;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 10;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 0		// max homing track range to latch onto enemy/player
this.scale_min_threshold = 0.5;
this.scale_max_threshold = 1.5;
audio_play_sound(argument11,0,0)	
   }				
}	

			if (argument13 = "DUMB6") {
		var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)


for (var i = 0; i < 6; i += 1)
   {
   //draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
   var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
   //this.image_angle = argument15 - 15
//this.image_angle = direction
this.direction = point_direction(x, y, objPLAYER.x + (choose (-5, +5)), objPLAYER.y + (choose (-5, +5)));

this.speed = velocity;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 10;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 0		// max homing track range to latch onto enemy/player
this.scale_min_threshold = 0.5;
this.scale_max_threshold = 1.5;
audio_play_sound(argument11,0,0)	
   }				
}	

		if (argument13 = "BH0") {
		var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)


for (var i = 0; i < 6; i += 1)
   {
   //draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
   var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
   //this.image_angle = argument15 - 15
//this.image_angle = direction
this.direction = point_direction(x, y, room_width / 2 + (irandom_range (-300 - i, 300 + i)), 640);
//this.direction = choose(this.direction  + i * 4,  this.direction - i * 4)
this.speed = velocity /2;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 15;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 0;		// max homing track range to latch onto enemy/player
this.scale_min_threshold = 0;
this.scale_max_threshold = 2;
this.image_xscale = 1;
this.image_yscale = 1;
this.ground_launched = false;
audio_play_sound(argument11,0,0)	
   }
			}


			if (argument13 = "DUMB6") {
		var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)


for (var i = 0; i < 6; i += 1)
   {
   //draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
   var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
   //this.image_angle = argument15 - 15
//this.image_angle = direction
this.direction = point_direction(x, y, objPLAYER.x + (irandom_range(-15, +15)), objPLAYER.y + (irandom_range(-0, +0)));
//this.direction = choose(this.direction  + i * 4,  this.direction - i * 4)
this.speed = velocity /3;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 10;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 0;		// max homing track range to latch onto enemy/player
this.scale_min_threshold = 1;
this.scale_max_threshold = 1;
this.image_xscale = 1;
this.image_yscale = 1;
this.ground_launched = false;
audio_play_sound(argument11,0,0)	
   }
		}		
   
   			if (argument13 = "DUMB360") {
		var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)


for (var i = 0; i < 360; i += 30)
   {
   //draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
   var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
   //this.image_angle = argument15 - 15
//this.image_angle = direction
//this.direction = point_direction(x, y, objPLAYER.x + 6, objPLAYER.y -6);
this.direction = this.direction + i
this.speed = velocity;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 10;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 0;		// max homing track range to latch onto enemy/player
this.scale_min_threshold = 0.5;
this.scale_max_threshold = 1.5;
audio_play_sound(argument11,0,0)	
   }
			}



} // END ENEMY
	}// END PELLET











	if (argument2 = "MISSILE") {
					//var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)
var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
//this.image_angle = argument15
//this.direction = point_direction(x, y, objPLAYER.x + 6, objPLAYER.y -6);

this.speed = velocity;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 0;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 0;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 0;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0;			// TIME TO EXPLODE
this.damage_value = 0;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.hp = 5
this.homing = 1;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 200		// max homing track range to latch onto enemy/player
//this.weapon = SpriteENEMYBULLET1	// max homing track range to latch onto enemy/player
this.z_climbrate = 0.01;
this.z_visualrate = 0.01;
this.image_xscale = 1.75
this.image_yscale = 1.75
this.direction = 270
this.image_angle = direction
this.scale_min_threshold = 0.5;
this.scale_max_threshold = 1.5;
this.doHorizontalMissileStuffs = true;
this.doVerticalMissileStuffs = false;
this.hittable = true;
this.destructable = true;
	

if (argument13 = "WEAKEST HOMING") {
	this.homing = 1;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 200
	}
	if (argument13 = "STRONG HOMING") {
	this.homing = 3;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 250	
	}
	if (argument13 = "STRONGEST HOMING") {
	this.homing = 5;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 200	
	}
	if (argument13 = "WEAK HOMING") {
	this.homing = 2;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 225	
	}//end HOMING AIR MISSILE CODE
}


	if (argument2 = "SECONDARY") {
					//var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)
var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
//this.image_angle = argument15
this.direction = point_direction(x, y, objPLAYER.x + (choose (-5, +5)), objPLAYER.y + (choose (-5, +5)));

this.speed = velocity;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 0;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 0;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 0;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0;			// TIME TO EXPLODE
this.damage_value = 0;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.hp = 5;


//this.weapon = SpriteENEMYBULLET1	// max homing track range to latch onto enemy/player
this.z_climbrate = 0.01;
this.z_visualrate = 0.01;
this.image_xscale = 1.75
this.image_yscale = 1.75
//this.direction = 270
this.image_angle = direction
this.scale_min_threshold = 0.5;
this.scale_max_threshold = 1.5;
this.doHorizontalMissileStuffs = true;
this.doVerticalMissileStuffs = false;
this.hittable = true;
this.destructable = true;
	

if (argument13 = "WEAKEST HOMING") {
	this.homing = 1;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 200
	}
	if (argument13 = "STRONG HOMING") {
	this.homing = 3;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 250	
	}
	if (argument13 = "STRONGEST HOMING") {
	this.homing = 5;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 200	
	}
	if (argument13 = "WEAK HOMING") {
	this.homing = 2;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 225	
	}//end HOMING AIR MISSILE CODE
	if (argument13 = "HOMING") {
	this.homing = 1;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
	this.track_range = 50
	}//end HOMING AIR MISSILE CODE
}





}



//////////////////////////// - end air launched
	
if (argument6 = "GROUND") {
		if (argument2 = "PELLET") {	
						if (argument13 = "AAADUMB") {
		var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)
var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
this.image_angle = argument15
//this.image_angle = direction
this.direction = point_direction(x, y, objPLAYER.x + (choose (-5, +5)), objPLAYER.y + (choose (-5, +5)));
this.speed = velocity /2;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 10;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 0;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 0		// max homing track range to latch onto enemy/player
this.image_xscale = 0.01;
this.image_yscale = 0.01;
this.doVerticalMissileStuffs = false;
this.doHorizontalMissileStuffs = false;
//this.hittable = true;
//this.destructable = true;
this.ground_launched = true;
this.z_climbrate = 1.5;
this.z_visualrate = 0.1;
this.scale_min_threshold = 2;
this.scale_max_threshold = 6;
audio_play_sound(argument11,0,0)						
}	// END AAADUMB
			
			
	}
	
	if (argument2 = "MISSILE") {
		if (argument0 = objENEMY) {
					var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)
var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
//this.image_angle = argument15
this.direction = point_direction(x, y, objPLAYER.x + (choose (-5, +5)), objPLAYER.y + (choose (-5, +5)));
//this.direction = point_direction(x, y, room_width / 2, room_height /2.5);
this.image_angle = direction
this.speed = velocity /2;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 33;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 5;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 100		// max homing track range to latch onto enemy/player
//this.weapon = SpriteDIRT	// max homing track range to latch onto enemy/player
//this.doHorizontalMissileStuffs = false
this.doVerticalMissileStuffs = true
//this.ground_launched = false;
this.z_climbrate = 0.04;
this.z_visualrate = 0.1;
//this.hittable = true;
//this.destructable = true;
//this.hp = 10;
this.scale_min_threshold = 0.75;
this.scale_max_threshold = 1.3;
this.image_xscale = 0.02;
this.image_yscale = 0.02;
this.secondary_stage = SpriteGMISSILE0
this.ground_launched = true;
	}
	}
	
		if (argument2 = "MISSILE2") {
		if (argument0 = objENEMY) {
					var horizontal_speed = (random_range(argument4,argument5))
object_set_sprite(argument14, argument1)
var this = instance_create_depth(argument7 + argument9, argument8 + argument10, argument12, argument14) // at of loop cycle create it
//this.image_angle = argument15
this.direction = choose (point_direction(x, y, room_width / 2, room_height /2.5), point_direction(x, y, objPLAYER.x + 6, objPLAYER.y -6));
this.image_angle = direction
this.speed = velocity -1;
//this.hspeed = horizontal_speed;
this.hit_GFX = objEXPLOSION1;        // EFFECT IF ENEMY GETS HIT
this.destroy_GFX = objEXPLOSION;        // GFX EFFECT WHEN ENEMY DIES
this.hit_X_offset = + 40;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_Y_offset = + 60;                // HIT GFX EFFECT X OFFSET (TWEAK FOR PROPER PLACEMENT)
this.hit_depth = 1;                  // EFFECT DEPTH LAYER
this.hit_SFX = HitSFX1;              // SFX FOR HIT NOISE
this.hit_SFX_Prio = 2;               // TWEAK HIT SFX PRIORITY
this.destroy_SFX = Destroyed;        // SFX FOR DESTRUCTION
this.destroy_SFX_Prio = 2;           // TWEAK DESTROY SFX PRIORITY
this.time_to_destruct = 0.25;			// TIME TO EXPLODE
this.damage_value = 33;    // BASE DAMAGE VALUE OF WEAPON TYPE + POWER LEVEL
this.destruct_distance = 0;       // SELF DESTRUCT DISTANCE
this.pierce = false;                 // DOES WEAPON pierce?
this.homing = 3;            // DOES WEAPON HOME ON ENEMY (NOT CODED YET)
this.track_range = 600		// max homing track range to latch onto enemy/player
//this.weapon = SpriteDIRT	// max homing track range to latch onto enemy/player
//this.doHorizontalMissileStuffs = false
this.doVerticalMissileStuffs = true
//this.ground_launched = false;
this.z_climbrate = 0.15;
this.z_visualrate = 0.1;
this.scale_min_threshold = 0.75;
this.scale_max_threshold = 1.25;
//this.hp = 7;
this.image_xscale = 0.01;
this.image_yscale = 0.01;
this.secondary_stage = SpriteGMISSILE1
this.ground_launched = true;
	}
	}
	
}
//////////////////////////// - end ground launched