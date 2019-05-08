
// START FUNCTION
// EXAMPLE USAGE
//					A0				 A1			  A2  A3  A4					 A5		  A6	A7 A8  A9 A10 A11
// Bullet_Generator(objVulcan_Round, object_index, 1, 2, (irandom_range(-20,20), Cannon1, 1000, x, y, -5, 5, "Normal") 

// A0 - projectile name
// A1 - Parents index (important for reusable turret system, should always be called with object_index)
// A2 - Pellets/amount
// A3 - velocity
// A4 - Spray Accuracy (use irandom range when calling to spray fire like in the example)
// A5 - weapon SFX
// A6 - Projectile depth
// A7 - X_start
// A8 - Y_start
// A9 - X_offset
// A10 - Y_offset


// PROJECTILE PROPERTIES
var projectile_name = argument0;
var parent = argument1;
var amount = argument2;
var vertical_velocity = argument3;			// SET VELOCITY
var spray_accuracy = argument4;				// ACCURACY OF WEAPON RANGE 1
var weapon_SFX = argument5;
var proj_depth = argument6;
var x_start = argument7;
var y_start = argument8;
var offset_x = argument9;
var offset_y = argument10;
var behaveset = argument11;


var horizontal_speed = spray_accuracy




audio_play_sound(weapon_SFX,0,0)
var i;
for (i = 1; i <= amount; i += 1)
   	  {
		  var new_x = offset_y * i
		  var new_y = offset_x * i
		  
		  
		  
		  
var thing = instance_create_depth(x_start + new_x, y_start + new_y, proj_depth, projectile_name)
if (behaveset = "Normal") {
thing.direction = point_direction(x, y, objPLAYER.x + 6, objPLAYER.y - 6);
thing.image_angle = point_direction(x, y, objPLAYER.x + 6, objPLAYER.y -6);
}

if (behaveset = "Downwards") {
	thing.direction = 270 ;
	thing.image_angle = 270;
//thing.hspeed = horizontal_speed;
}


thing.speed = vertical_velocity;  // The instance will move up the screen
}

