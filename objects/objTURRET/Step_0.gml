/// @description Insert description here
// You can write your code in this editor


			if instance_exists(parent) = true {
				if instance_exists(objPLAYER) = true {


	if (scaling = true) {
	var enemy_fire_rate = firerate / rankvalue// 1 second interval
}
if (scaling = false) {
	var enemy_fire_rate = firerate // 1 second interval
}


var distance_player = distance_to_object(objPLAYER) 
	
	var angle = point_direction(x, y, objPLAYER.x, objPLAYER.y);	
	
	direction = point_direction(x, y, objPLAYER.x, objPLAYER.y)
if (parent.hold_fire = false) {	
	if (y <= 630) {
	if instance_exists(objPLAYER) {
	var distance_player = distance_to_object(objPLAYER) 
	
		if (alarm[0] < 0) {
			alarm[0] = room_speed * enemy_fire_rate / 5
		if (behavior = "spin"){
	//		
			//Determine_Weapon(parent.weapon)
	Ultimate_Bullet_Gen(objTURRET, parent.weapon, parent.shell_type, parent.weapon_velocity, parent.pellet_amount, parent.angle_change, parent.weapon_mode, x + x_offset, y + y_offset, 0, 0, VulcanFire, -900, parent.weapon_behavior, objENEMYPROJECTILE, saved_angle)
		saved_angle += angle_change
			if (saved_angle > 360) {
			saved_angle = 0	
			}
			}
		
				if (behavior = "bullet"){
	//		
			//Determine_Weapon(parent.weapon)
	Ultimate_Bullet_Gen(objTURRET, SpriteENEMYBULLET1, parent.shell_type, parent.weapon_velocity, parent.pellet_amount, parent.angle_change, parent.weapon_mode, x + x_offset, y + y_offset, 0, 0, VulcanFire, -900, parent.weapon_behavior, objENEMYPROJECTILE, 0)
		//
				}
				}
		
			if (alarm[1] < 0) {
			alarm[1] = room_speed * enemy_fire_rate / 2
			
			if (behavior = "pinpoint rocket"){
				image_angle = Rotate(direction, point_direction(x, y, objPLAYER.x, objPLAYER.y), 360);
			AI_Bullet_Generator(objROCKET, 1, 8, 0, 0, Pfft, -999, x - 15, y, 0, 0) 
			}
			
			
			
		}
	
	}
}
}
}
	}
			

			if instance_exists(parent) != true {
	instance_destroy()
	}
	
	if (hp <= 0) and (destructable = true) {
	instance_destroy()	
	}
	

			
	if (y > room_height + 192) {instance_destroy()} // destroy me if i go to far off bottom screen


