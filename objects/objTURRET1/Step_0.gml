/// @description Insert description here
// You can write your code in this editor
if (y > room_height + 192) {instance_destroy()}

	if (hp < 0) and (destructable = true) {
	instance_destroy()	
	}
	
	if instance_exists(objDD) != true {
	instance_destroy()
	}

var enemy_fire_rate = 2 // 1 second interval
var distance_player = distance_to_object(objPLAYER) 
	
	var angle = point_direction(x, y, objPLAYER.x, objPLAYER.y);
	
	image_angle = Rotate(direction, point_direction(x, y, objPLAYER.x, objPLAYER.y), 360);

	if (alarm[0] < 0) {
		alarm[0] = room_speed * enemy_fire_rate
		if (distance_player <= 500)
		{
		AI_Bullet_Generator(objENEMYBULLET1, 1, 4, 0, 0, DDfires, -102, x - 5, y + 15, 8, 0) 
		}
	}
	
	

	
	
