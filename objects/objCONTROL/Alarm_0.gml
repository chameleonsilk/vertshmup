/// @description CREATE CLOUDS
// You can write your code in this editor
var xpos = irandom(room_width);
instance_create_depth(xpos, -500, (choose(-800)), objCLOUDS);
if (transition = true) {
alarm[0] = room_speed * (random_range (1, 2));
}

if (transition = false) {
alarm[0] = room_speed * (random_range (1,2));
}

objCLOUDS.image_xscale = 1.5
objCLOUDS.image_yscale = 1.5


