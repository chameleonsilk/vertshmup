//callWAVE_HOVER_TOP
/// designed to call in planes at the top of the screen with random x position that descend and launch weaponry and then turn and leave
//
//arg0 = name of thing to spawn
//arg1 = amount of cycles to spawn
//arg2 = init X
//arg3 = init Y of spawned object
//arg4 = the depth of spawned object


var new_x = argument2
var new_y = argument3
var offset_x = 80
var offset_y = 0

for (i = 1; i <= argument1 * 1; i += 1)
   	  {
		  
		  new_x = offset_y * i
		  new_y = offset_x * i
		  
instance_create_depth(argument2 + new_x, argument3 + new_y, argument4, argument0);
	  }




