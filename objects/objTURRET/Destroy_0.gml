/// @description Insert description here
// You can write your code in this editor
if instance_exists(parent) = true {
parent.destroyedparts = parent.destroyedparts + 1;
};
instance_create_depth(x, y, 1, objEXPLOSION);
//	Powerup_Generator(50)