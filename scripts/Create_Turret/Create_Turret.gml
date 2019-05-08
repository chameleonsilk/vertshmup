var parent_name = argument0;
var turretname = argument1;
var xlocation = argument2;
var ylocation = argument3;
var thisdepth = argument4;
var createdturretname = argument5;

createdturretname = instance_create_depth(xlocation, ylocation, thisdepth, turretname);
createdturretname.hp = turretname.hp
createdturretname.vspeed = parent_name.vspeed;
createdturretname.hspeed = parent_name.hspeed;
createdturretname.speed = parent_name.speed;
createdturretname.direction = parent_name.direction;
createdturretname.destructable = turretname.destructable; //?
createdturretname.hittable = turretname.hittable;






