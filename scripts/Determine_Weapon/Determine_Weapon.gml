var weapon = argument0; // object who is shooting


if (argument0 = SpriteENEMYBULLET1) {
	shell_type = "PELLET"
	weapon_mode = "AIR"
	weapon_behavior = "DUMB"

}

if (argument0 = SpriteENEMYBULLET0) {
	shell_type = "PELLET"
	weapon_mode = "AIR"
	weapon_behavior = "SPIN"
		saved_angle = 330
		angle_change = choose (-15, -33)
		x_offset = 30
		y_offset = 0
}

if (argument0 = SpriteENEMYBULLET3) {
	shell_type = "PELLET"
	weapon_mode = "AIR"
	weapon_behavior = "SPIN"
		saved_angle = 330
		angle_change = 15
		x_offset = 30
		y_offset = 0
}



if (argument0 = SpriteAAAFIRE1) {
	shell_type = "PELLET"
	weapon_mode = "GROUND"
	weapon_behavior = "AAADUMB"
}

if (argument0 = SpriteAAAFIRE) {
	shell_type = "PELLET"
	weapon_mode = "GROUND"
	weapon_behavior = "AAADUMB"
}



if (argument0 = SpriteENEMYBULLET2) {
	shell_type = "PELLET"
	weapon_mode = "GROUND"
	weapon_behavior = "SPIN"
}


if (argument0 = SpriteMISSILE1) {
	shell_type = "MISSILE"
	weapon_mode = "AIR"
	weapon_behavior = "WEAKEST HOMING"
	}
	
	if (argument0 = SpriteMISSILE0) {
	shell_type = "MISSILE"
	weapon_mode = "AIR"
	weapon_behavior = "WEAK HOMING"
	
	}

if (argument0 = SpriteVERTMISSILE0) {
	shell_type = "MISSILE"
	weapon_mode = "GROUND"
	weapon_behavior = "HOMING"

}

if (argument0 = SpriteVERTMISSILE1) {
	shell_type = "MISSILE2"
	weapon_mode = "GROUND"
	weapon_behavior = "HOMING"

}


	
	
	

