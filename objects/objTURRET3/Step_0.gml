/// @description Insert description here
// You can write your code in this editor
if (y > room_height + 192) {instance_destroy()}

			if instance_exists(objENEMYBOMBER) = true {
				if instance_exists(objPLAYER) = true {


	if (scaling = true) {
	var enemy_fire_rate = choose(5) / rankvalue// 1 second interval
}
if (scaling = false) {
	var enemy_fire_rate = choose(5)// 1 second interval
}


var distance_player = distance_to_object(objPLAYER) 
	
	var angle = point_direction(x, y, objPLAYER.x, objPLAYER.y);
	
	//image_angle = Rotate(direction, point_direction(x, y, objPLAYER.x, objPLAYER.y), 360);
	direction = point_direction(x, y, objPLAYER.x, objPLAYER.y)
if (objENEMYBOMBER.hold_fire = false) {
	if (alarm[0] < 0) {
		alarm[0] = room_speed * enemy_fire_rate
		//if (distance_player <= 400) and (distance_player > 32) {
		AI_Bullet_Generator(objENEMYBULLET2, 1, 7, 0, 0, Mute, -1006, x, y, (random_range(-20,20)), (random_range(-20,-20))) 
		}
	
	}
				}
	
	if (hp < 0) and (destructable = true) {
	instance_destroy()	
	}
	}
	
			if instance_exists(objENEMYBOMBER) != true {
	instance_destroy()
	}
			
	
	
