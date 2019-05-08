var checktime = time - start_time

if (phase > 0) {
//hold_fire = false	
}

if (phase = 0) {
		if (checktime > 400) {
			hold_fire = false;
	phase += 1
	}
	}

	
	if (phase = 1) {
			if alarm[0] < 0 {
	alarm[0] = room_speed * 4;;
	destructable = false;
		hittable = false;
		image_blend = make_colour_hsv(40, 10, 255);
	}
	}
	
	
	if (phase = 2) {
		if alarm[1] < 0 {
		alarm[1] = room_speed * 4;
		destructable = true;
		hittable = true;
		image_blend = make_colour_hsv(0, 100, 255);
		}
		}
	
	if (hp <= 0) and (destructable = true) {
//	Powerup_Generator(1000)
	instance_destroy()
	}
	
	if (destroyedparts = 6)
	{
	instance_destroy()	
	destroyedparts = 0
	}






