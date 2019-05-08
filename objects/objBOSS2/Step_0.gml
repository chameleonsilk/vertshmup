var checktime = time - start_time
if (phase > 0) {
hold_fire = false	
}

if (phase = 0) {
		if (checktime > 400) {
	phase += 1
	}
	}

	
	if (phase = 1) {
	if (destroyedparts = 2) {
	phase += 1
	image_blend = make_colour_hsv(255, 255, 20);
	}
	
	
	
	if (checktime >= phase_length) {
		phase += 1
		}
	}
	

		
	//	state = "Attack";
		//path_start(sway, velocity, path_action_restart, 0);

	
	//else {
	//state = "Wait"	
//	}
	//}
	
	if (phase = 2) {
		image_blend = make_colour_hsv(255, 255, 62);
		if (destroyedparts = 8) {
		destroyable = true;
		hittable = true;
	phase += 1
		}
	}
		
		if (phase = 3) {
			image_blend = make_colour_hsv(255, 255, 122);
		destroyable = true;
		hittable = true;
	phase += 1
	}
	
	
	

	
	if (hp <= 0) and (destructable = true) {
//	Powerup_Generator(1000)
	instance_destroy()
	}
	
	if (destroyedparts = 9)
	{
	instance_destroy()	
	destroyedparts = 0
	}






