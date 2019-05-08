//Ultimate_Explosions(imagescale, sprite, lingersprite)
//arg1
//arg2
//arg3
//arg4

var image_size = argument[0];
var sprite = argument[1];
var lingersprite = argument[2];


object_set_sprite(objEXPLOSION, sprite) // set the objects sprite correctly before spawning a unique version of it
var this = instance_create_depth(x,y,depth,objEXPLOSION) // at of loop cycle create it
	this.image_xscale = image_size
	this.image_yscale = image_size