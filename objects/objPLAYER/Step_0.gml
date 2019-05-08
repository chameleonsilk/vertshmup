/// @description KEY POLLING/PLAYER UPDATES
// You can write your code in this editor

if (transition = true) {
image_alpha = 0.35;
}

if (transition != true) {
image_alpha = 1;
}
					//image_index = 0
image_blend = make_colour_hsv(0,0,255);				
if invince = 0 then {
	image_index = 0;
}

if invince = 2 then {
	image_index = 0;
}

if invince = 1 then {
	if image_index = 4 then image_index = 0;
	image_speed = 1
}


if (keyboard_check(vk_control) = true) {
	if (debug_show) {
	debug_show = false	
	}
	else {
	debug_show = true	
	}
}
	
			if (keyboard_check(vk_up) = true) {
			move_up =  true
		}
		if (keyboard_check(vk_down) = true) {
			move_down =  true
		}
		if (keyboard_check(vk_left) = true) {
			move_left =  true
		}
		if (keyboard_check(vk_right) = true) {
			move_right =  true
		}
		if (keyboard_check(ord("X"))  = true) {
			x_or_a_shot =  true
		}
				if (keyboard_check_pressed(ord("Z"))  = true) {
			square_or_x =  true
		}
				if (keyboard_check_pressed(ord("C"))  = true) {
			decoy_release =  true
		}
						if (keyboard_check_pressed(ord("A"))  = true) {
			wing_change =  true
		}
	

var maxpads = gamepad_get_device_count();for (var i = 0; i < maxpads; i++)
    {
    if (gamepad_is_connected(i)) {
	gamepad_set_axis_deadzone(i, 1);
        {
    
	if (gamepad_button_check(i,gp_padl) = true) {
			move_left =  true
        }
		if (gamepad_button_check(i,gp_padr) = true)  {
			move_right = true
        }
				if (gamepad_button_check(i,gp_padd) = true) {
			move_down = true
        }
				if (gamepad_button_check(i,gp_padu) = true)  {
			move_up = true
        }
		
			if (gamepad_button_check_pressed(i,gp_face1) = true)  {
			x_or_a_shot = true	
			}
				if (gamepad_button_check(i,gp_face2) = true)  {
			square_or_x = true	
			}
			if (gamepad_button_check_released(i,gp_face3) = true)  {
			decoy_release = true	
			}
			if (gamepad_button_check_released(i,gp_face4) = true)  {
			wing_change = true	
			}
			if (gamepad_button_check_released(i,gp_face1) = true) {
			x_or_a_shot = false	
			}
}
	}
	}




if (move_up = true) {
if (invince = 0){
	image_index = 0;
}


y -= 5;
move_up = false

}


if (move_down = true) {
if (invince = 0) {
	image_index = 0;
}
 y += 5;
 move_down = false
}

if (move_left = true) {
		if (invince = 0){
			image_index = 3;
		}
		x -= 5;
		move_left = false}
		

if(move_right = true) { 
	if (invince = 0) {
			image_index = 1;
	}
	x += 5;
	move_right = false
}





//imageindex = 0


x = median(32, x, room_width - 32);
y = median(64, y, room_height -32);
var playerx = x
var playery = y
playx = playerx
playy = playery


if (square_or_x = true) {
	if (invince = 0) && (Geforce <= Max_G - 3) {
		invince = 1;
		Geforce += 3;
		hittable = false;
		destructable = false;
		effect_grow = true;
		transition = true;
		audio_play_sound(BFM, 1, false)
			alarm[2] = room_speed * 1;
			alarm[4] = room_speed * 2;
		}

	if (invince = 2) {
		//health = health - 1
		alarm[7] = 3
		}
}

if (transition = true) {
if (effect_grow = true) {
image_xscale += 0.1
image_yscale += 0.1
if image_xscale >= 7 {
effect_grow = false
effect_shrink = true
}
}


if (effect_shrink = true) {
image_xscale -= 0.1
image_yscale -= 0.1
if (image_xscale <= 1) {
	image_xscale = 1
	image_yscale = 1
	transition = false
	effect_grow = false
	effect_shrink = false
}
}
}


if (decoy_release = true) {
	if (objPLAYER.bp >= 1) {
		objPLAYER.bp = objPLAYER.bp - 1
	
	if (alarm[5] < 0) {
		
		if bombpowerup = 1 then {
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 270)
		}
		if bombpowerup = 2 then {
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x -8, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 280)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x +8, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 260)
		}
		if bombpowerup >= 3 then {
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x-16, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 260)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 270)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x+16, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 290)
		}
				if bombpowerup >= 4 then {
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x-32, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 250)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x-16, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 260)
		//Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 90)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x+16, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 280)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x+32, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 290)
		}
				if bombpowerup >= 5 then {
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x-32, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 250)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x-16, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 260)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 270)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x+16, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 280)
		Ultimate_Bullet_Gen(objPLAYER, SpriteBOMBMK42, "PELLET", 2, 0, 0, "AIR", x+32, y, 0, 0, VulcanFire, -900, "BOMB", objPLAYERPROJECTILE, 290)	
		}
		}
		
		
		
	

	alarm[5] = room_speed * 0.1;
	//x_or_a_shot = false
}
}
		//flare -= 1;
		
	//	if (flare >= 0) {
	//	instance_create_depth(x,y, -900, objPLAYERFLARE) 
	//	instance_create_depth(x,y, -900, objPLAYERFLARE) 
	//	instance_create_depth(x + 10,y + 5, -900, objPLAYERFLARE) 
	//	instance_create_depth(x -10,y + 5, -900, objPLAYERFLARE) 
	//	}
		
	//	if flare <= 0 {
	//		flare = 0
	//		audio_play_sound(CM_out,0,0) 
	//		}
			
	//	if (flare >= 1) && (flare <= 3) {
	//	audio_play_sound(CM_low,0,0)
	//	}
	//	if (flare >= 4) {
	//	audio_play_sound(Countermeasures,0,0)
	//	}
//		decoy_release = false
//}
		





if (wing_change = true) { 
	if (alarm[6] < 0) {
	audio_play_sound(Option_Select,-1,false)
	wing_set += 1
	
	if (wing_set > 4) { wing_set = 1 }
	if (wing_set < 1) { wing_set = 4 }
	
	if (wing_set = 4) {

		alarm[6] = room_speed * 0.10
		}
	
	if (wing_set = 3) {

		alarm[6] = room_speed * 0.10
		}
	
	
	if (wing_set = 2) {

		alarm[6] = room_speed * 0.10
		}

	
	if (wing_set = 1) {

		alarm[6] = room_speed * 0.10
		}


	wing_change = false

}
}
	
	
	

	

	



if (x_or_a_shot = true)	 { 
	rankvalue += 0.00001
	if (alarm[0] < 0) {
		if (powerup = 0) {
		//Bullet_Generator1 (objVulcan_Round, 1, -30, 0, 0, VulcanFire, -900, x - 4 , y, 6, 0) 
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 15, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
		}
		if (powerup >= 1 and powerup <= 4) {
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 15, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 88)
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 15, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 92)
//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -1, 1, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//Bullet_Generator1 (objVulcan_Round, 2, -30, 0, 0, VulcanFire, -900, x + -8, y, 6, 0) 
		}
		if (powerup >= 5) {
Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 15, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 88)
Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 15, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)		
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 15, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 92)
		}
	//	if (powerup >= 10) { //and powerup <= 14) {
		//		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -3, 3, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
	//			Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -2, 2, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
	//	Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -1, 1, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90) 
	//	}
	//	if (powerup >= 15) { 
	//					Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -4, 4, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
	//					Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -3, 3, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
	//			Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -2, 2, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -1, 1, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90) 
	//	}
	//	if (powerup >= 20 and powerup <= 24) {
	//							Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -5, 5, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
	//							Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -4, 4, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
	//					Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -3, 3, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//				Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -2, 2, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -1, 1, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90) 
	//	}
	//	if (powerup >= 25 and powerup <= 29) {
	//									Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -6, 6, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
	//									Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -5, 5, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
	//							Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -4, 4, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//						Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -3, 3, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//				Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -2, 2, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -1, 1, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)  
	//	}
	//	if (powerup >= 30) {
		//										Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0,0, "AIR", x, y, -2, 0, VulcanFire, -899, "DUMB", objPLAYERPROJECTILE, 90)
	//									Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0, 0, "AIR", x, y, -1, 0, VulcanFire, -899, "DUMB", objPLAYERPROJECTILE, 100)
	//									Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -899, "DUMB", objPLAYERPROJECTILE, 80)
								//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -4, 4, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
						//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -3, 3, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
				//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -2, 2, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
		//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, -1, 1, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 18, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)  	
		 
		//}
	
if (wing_set = 1) {
	
var angle = 90	
}
if (wing_set = 2) {
	
var angle = 0	
}
if (wing_set = 3) {
	
var angle = 270	
}
if (wing_set = 4) {
	
var angle = 180	
}


		if (wingmancount = 1) {
			//rankvalue += 0.000001

		if (angle = 90) {
Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle)
//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle - 4)
		}
		if (angle != 90) {
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle)
		}
		}
			
		if (wingmancount = 2) {
			//rankvalue += 0.000002
					if (angle = 90) {
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle + 12)
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle - 12)
		//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle - 4)
		//Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle - 6)
		}
		if (angle != 90) {
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle - 2)
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle + 2)
		}
		}
			
				if (wingmancount = 3) { 
				//rankvalue += 0.000003
						if (angle = 90) {
			
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle + 12)
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, -3, 3, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle)
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle - 12)
		
		
		}
		if (angle != 90) {
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle - 2)
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle)
		Ultimate_Bullet_Gen(objPLAYER, SpritePLAYERBULLET, "PELLET", 13, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, angle + 2)
		}
				}
		
		
		
		
		
	alarm[0] = room_speed * 0.05
	}
	
	if (alarm[1] < 0) {
		if aimpowerup = 1 then {
			Ultimate_Bullet_Gen(objPLAYER, SpriteMISSILE0, "PELLET", 6, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "MISSILE", objPLAYERPROJECTILE, 90) 
			//Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x + 12, y, 0, 0) 
		}
		if aimpowerup = 2 then {
			Ultimate_Bullet_Gen(objPLAYER, SpriteMISSILE0, "PELLET", 6, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "MISSILE", objPLAYERPROJECTILE, 90) 
	//		Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Pfft, -900, x - 12, y, 0, 0) 
	//		Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x - 18, y, 0, 0) 
	//		Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x + 12, y, 0, 0) 
	//		Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x + 18, y, 0, 0) 
		}
		if aimpowerup >= 3 then {
			Ultimate_Bullet_Gen(objPLAYER, SpriteMISSILE0, "PELLET", 6, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "MISSILE", objPLAYERPROJECTILE, 90) 
	//		Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Pfft, -900, x - 18, y, 0, 0) 
	//		Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x - 12, y, 0, 0) 
	//		Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x - 6, y, 0, 0) 
	//		Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x + 6, y, 0, 0) 
//			Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x + 12, y, 0, 0) 
//			Bullet_Generator1 (objPLAYERAIM, 1, -9, 0, 0, Mute, -900, x + 18, y, 0, 0) 
		}
		
	

	alarm[1] = room_speed * 1;
	//x_or_a_shot = false
}
}

		


if (health <= 0)
{
	instance_destroy()
}
		


move_up = false
move_down = false
move_right = false
move_up = false
wing_change = false




square_or_x = false
decoy_release = false