/// @description Insert description here
// You can write your code in this editor
if (y > room_height + 192) {instance_destroy()}

if (instance_exists(objENEMYBOMBER) = true){
if (objENEMYBOMBER.phase = 2) {
hold_fire = false	
destroyable = true
hittable = true
}
}


	if (scaling = true) {
	var enemy_fire_rate = 3 / rankvalue
}
if (scaling = false) {
	var enemy_fire_rate = 3
}
var enemy_fire_rate = 3// 1 second interval

	if (instance_exists(objPLAYER) = true) {
	var angle = point_direction(x, y, objPLAYER.x, objPLAYER.y);
	
	image_angle = Rotate(direction, point_direction(x, y, objPLAYER.x, objPLAYER.y), 360);
	}

if (hold_fire = false) {
	image_index = 1
	//image_speed = -1
	//image_blend = make_colour_hsv(255, 255, random(255));
	if (alarm[0] < 0) {
		alarm[0] = room_speed * enemy_fire_rate
		}
	}
	
	if (hp < 0) and (destructable = true) {
	instance_destroy()	
	}
	
	
		if instance_exists(objENEMYBOMBER) != true {
	instance_destroy()
	}

if (image_index = 4) {
image_speed = 0	
}