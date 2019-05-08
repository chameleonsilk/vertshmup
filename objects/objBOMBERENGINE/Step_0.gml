/// @description Insert description here
// You can write your code in this editor
//if (y > room_height + 192) {instance_destroy()}


if (instance_exists(objPLAYER) = true) {
var enemy_fire_rate = 4 // 1 second interval
var distance_player = distance_to_object(objPLAYER) 
	
	var angle = point_direction(x, y, objPLAYER.x, objPLAYER.y);
	
	//image_angle = Rotate(direction, point_direction(x, y, objPLAYER.x, objPLAYER.y), 360);
	direction = point_direction(x, y, objPLAYER.x, objPLAYER.y)


	if (alarm[0] < 0) {
		alarm[0] = room_speed * enemy_fire_rate
		//if (distance_player <= 400) and (distance_player > 32) {
		AAI_Bullet_Generator(objENEMYBULLET4, 2, 6, 0, 0, Mute, -102, x + 25, y + 30, 8, 0, "Downwards") 
		}
}	
	
	if (hp < 0) and (destructable = true) {
		EB_destroyedparts += 1
//Powerup_Generator(1000)
	instance_destroy()	
	}
	
			if instance_exists(objENEMYBOMBER) != true {
	instance_destroy()
	}
	

	
	
	
	
