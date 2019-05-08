var parent_name = argument0; // the name of object that this is a child of
var turret_object_name = argument1; // the turret object
var sprite = argument2; // select the picture used for the turret instance
var xlocation = argument3; // xlocation should be the offset locations to place the turret properly on the enemy
var ylocation = argument4; // ylocation should be the offset locations to place the turret properly on the enemy
var thisdepth = argument5; // depth of instance
var path = argument6; // path to use should be set to the parents path
var velocity_on_path = argument7; // integer
var path_action = argument8; // path_action_continue / restart / reverse stop
var absolute = argument9; // boolean
var firerate = argument10; // interger (Delay between shots)
var behavior = argument11; // string (ultimately determines the turret type i.e 360, 180 degree etc)
var hp = argument12; // health of the turret
var hittable = argument13; // is it a hittable object boolean?
var destructable = argument14; // sprite of weapon

//var destructable = argument14; // can it be destroyed boolean?

object_set_sprite(argument1, argument2) // set the objects sprite correctly before spawning a unique version of it
var child_object = instance_create_depth(argument3, argument4, argument5, argument1); // spawn the new turret

with child_object // now with that newly created instance we want to set the object paramaters
  {
	//child_object.behavior = argument9		// use various specific customized pathing
	child_object.parent = argument0			// this turrets parent object
	child_object.velocity = argument7		// turrets velocity along the path (should match the parents)
	child_object.firerate = argument10		// the fire rate of the turret (determines how often the turret activates)
	child_object.behavior = argument11		// use various specific customized firing plans that effect the fire mode
	child_object.hp = argument12			// the turrets health
	child_object.hittable = argument13		// is it hittable or do bullets fly over it
	child_object.destructable = argument14	// can it be destroyed
	child_object.destroyedparts = 0			// counts destroyed parts to trigger parent death after so many parts are broken
	//Determine_Weapon(weapon)
	path_start(argument6,argument7,argument8, argument9); // start the path specified with the paramaters plumbed in
  }
  



 








