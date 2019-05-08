
// START FUNCTION
// EXAMPLE USAGE
// Bullet_Generator(objVulcan_Round, 0.05, -30, 270, 1, 0, 0, -1, 1, Cannon1, 1, 0, 0) 

// A0 - projectile name
// A1 - Pellets/amount
// A2 - velocity
// A3 - direction
// A4 - accuracy n1
// A5 - accuracy n2
// A6 - weapon SFX
// A7 - Projectile depth
// A8 - X_offset
// A9 - Y_offset


// PROJECTILE PROPERTIES
var projectile_name = argument0;
var amount = argument1;
var vertical_velocity = argument2;			// SET VELOCITY
var accuracy_set_n1 = argument3;				// ACCURACY OF WEAPON RANGE 1
var accuracy_set_n2 = argument4;				// ACCURACY OF WEAPON RANGE 2
var weapon_SFX = argument5;
var proj_depth = argument6;
var x_start = argument7;
var y_start = argument8;
var x_offset = argument9;
var y_offset = argument10;

var horizontal_speed = (random_range(accuracy_set_n1,accuracy_set_n2))


audio_play_sound(weapon_SFX,0,0)
var i;
for (i = 1; i <= amount; i += 1)
   	  {
		  x_start += x_offset
		  y_start += y_offset
		  
var thing = instance_create_depth(x_start + x_offset, y_start + y_offset, proj_depth, projectile_name)
thing.vspeed = vertical_velocity;  // The instance will move up the screen
thing.hspeed = horizontal_speed;
}



