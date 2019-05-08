/// @description Insert description here
// You can write your code in this editor
if (y > room_height + 192) {instance_destroy()}

var enemy_fire_rate = choose(1,2,3) // interval
var distance_player = distance_to_object(objPLAYER) 
	
	var angle = point_direction(x, y, objPLAYER.x, objPLAYER.y);
	
	//image_angle = Rotate(direction, point_direction(x, y, objPLAYER.x, objPLAYER.y), 360);
	direction = point_direction(x, y, objPLAYER.x, objPLAYER.y)

	if (alarm[0] < 0) {
		alarm[0] = room_speed * enemy_fire_rate
		if (distance_player <= 400) and (distance_player > 64) {
		AI_Bullet_Generator(objENEMYBULLET3, 1, 2, 0, 0, Cannon1, -102, x - 5, y + 15, 8, 0) 
		}
	}
	
	if (hp < 0) and (destructable = true) {
	instance_destroy()	
	}
	
			if instance_exists(objENEMYBOMBER) != true {
	instance_destroy()
	}
	
	
