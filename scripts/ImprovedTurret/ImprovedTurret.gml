var parent_name = argument0;
var turretname = argument1;
var xlocation = argument2;
var ylocation = argument3;
var thisdepth = argument4;
var createdturretname = argument5;
var pathname = argument6;
var pathactionstop = argument7;
var parentspeed = argument8;
var warpingtospawn = argument9;



instance_create_depth(parent_name.x + xlocation, parent_name.y + ylocation, thisdepth, turretname);
createdturretname.hp = turretname.hp
createdturretname.vspeed = parent_name.vspeed;
createdturretname.hspeed = parent_name.hspeed;
createdturretname.speed = parent_name.speed;
createdturretname.direction = parent_name.direction;
createdturretname.destructable = turretname.destructable;
createdturretname.hittable = turretname.hittable;

var assignparentspath = path_get_name(argument6)

path_start(assignparentspath,  parentspeed, pathactionstop, warpingtospawn)


