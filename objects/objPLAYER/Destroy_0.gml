/// @description DESTRUCTION OF PLAYER
// You can write your code in this editor
rankvalue -= 1
if (rankvalue <= 1) {
	rankvalue = 1
}

if (--lives > 0) {
	//instance_destroy(other)
health = maxhp;
powerup = 0
aimpowerup = 0
bombpowerup = 1

instance_create_depth(x, y, 1, objEXPLOSION);
instance_create_depth(x - 20, y, 1, objEXPLOSION);
instance_create_depth(x + 20, y, 1, objEXPLOSION);
instance_create_depth(x, y + 20, 1, objEXPLOSION);
instance_create_depth(x, y + 20, 1, objEXPLOSION);





if (powerup >= 10) && (powerup <19) { 

}
if (powerup >= 20) && (powerup <29) { 

}

if (wingmancount = 1) {
	instance_destroy(objWMAN1)

}

if (wingmancount > 1) && (wingmancount <3) {
	instance_destroy(objWMAN1)
	instance_destroy(objWMAN2)

}

if (wingmancount = 3) {
	instance_destroy(objWMAN1)
	instance_destroy(objWMAN2)
	instance_destroy(objWMAN3)

}

wingmancount = 0;
	

//}
}

else {
	gamestart = 1;
	extended = 0
	highscore_add("Player",score);

	//instance_create_depth(0,0,0,objCONTROL);

}
