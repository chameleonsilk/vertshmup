/// @description Insert description here
// You can write your code in this editor
spawnypos = 250;
spawnxpos = -100;
//var thisx = random_range(70,410)
//var thisy = -300

if (instance_exists(objPLAYER) != true) && (lives > 0) {
instance_create_depth(240, room_height - 32, -999, objPLAYER);	
}

if (instance_exists(objPLAYER) != true) && (lives <= 0) {
			if alarm[10] < 0 {
	alarm[10] = 600;
		}
}



