/// @description Insert description here
// You can write your code in this editor
//RUN ONCE AFTER CREATE
if (runOnce = true) {
runOnce = false;
if (sprite_used) = SpriteCANNON{
	//powerup += 1
	vspeed = -9
	collider_effect = "Cannon";
}

if (sprite_used) = SpriteBOMB {
	//bombpowerup +=1
	vspeed = -9
	collider_effect = "Bomb"
}

if (sprite_used) = SpriteMISSILE {
	//aimpowerup +=1
	vspeed = -9
	collider_effect = "Missile"
	
}

if (sprite_used) = SpriteFRAGPEICE {
	//bp +=1
	vspeed = 1
	collider_effect = "Frag"
	
}

if (sprite_used) = SpriteWINGMANUP {
	//aimpowerup +=1
	vspeed = -9
	collider_effect = "Wing"
	
}
}

//=====================
// runs only if collision via code
//
if (place_meeting(x,y,objPLAYER) = true) { // only run if its hitting the player
	audio_play_sound(sfx,0,0)	// play pickup sound
	if (collider_effect = "Cannon") {
		powerup += 1
	}
	if (collider_effect = "Bomb") {
		bombpowerup += 1
	}
	if (collider_effect = "Missile") {
		aimpowerup += 1
	}
	if (collider_effect = "Frag") {
		objPLAYER.bp += 1
		if (objPLAYER.bp >= objPLAYER.Max_BP) {
		objPLAYER.bp = objPLAYER.Max_BP	
		}
	}
	if (collider_effect = "Wing") {
	wingmancount += 1;
	if (wingmancount > 3) {
		wingmancount = 3
	}
	rankvalue = rankvalue + 0.50

	if wing_set = 0 {
	wing_set = 1	
	}

	if wingmancount = 1 
	{
	instance_create_depth(objPLAYER.x - 32, y, -999, objWMAN1)
	}
	if wingmancount = 2
	{	
	instance_create_depth(objPLAYER.x - 32, y, -999, objWMAN1)
	instance_create_depth(objPLAYER.x + 32, y, -999, objWMAN2)
	}
	if wingmancount = 3
	{
	instance_create_depth(objPLAYER.x - 32, y, -999, objWMAN1)
	instance_create_depth(objPLAYER.x + 32, y, -999, objWMAN2)
	instance_create_depth(objPLAYER.x, y + 32, -999, objWMAN3)
	}
}
	
	
	instance_destroy()}

//=====================
// runs always REAL STEP HERE
//
vspeed += +0.1 * rankvalue;
if (vspeed >= 4) {
	vspeed = 4
	}

if (y >= 1440) {
instance_destroy()
}