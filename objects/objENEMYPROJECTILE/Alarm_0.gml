/// @description Insert description here
// You can write your code in this editor
//show_debug_message("ALARM")
if (ground_launched = true) {
if (image_xscale > scale_min_threshold) && (image_xscale < scale_max_threshold) {
		image_alpha = 1
					image_xscale += z_climbrate;
			image_yscale += z_climbrate;
		}
		
			if (image_xscale <= scale_min_threshold) {
			image_alpha = 0.25;
			image_xscale += z_climbrate /2;
			image_yscale += z_climbrate /2;
		}
		
			if (image_xscale > scale_max_threshold)
		{
			depth = -2002
			image_alpha = 0.11;
							image_xscale += z_climbrate;
			image_yscale += z_climbrate;
		}
		
			if (image_xscale > scale_max_threshold * 2)
		{
			image_alpha = 0.05;
			image_xscale += z_climbrate * 2;
			image_yscale += z_climbrate * 2;
		}
		
			if (image_xscale >= scale_max_threshold * 3)
		{
			image_alpha = 0.01;
			image_xscale += z_climbrate * 6;
			image_yscale += z_climbrate * 6;
		}
	

	
	//			if (image_xscale <= scale_max_threshold) {
	//		image_xscale += z_climbrate * 2;
	//		image_yscale += z_climbrate * 2;
		//	}
					 
			 			 if (image_xscale > scale_max_threshold * 50) {
			instance_destroy()
			 }
			 
}

if (doHorizontalMissileStuffs = true) {
		image_xscale -= z_climbrate;
		image_yscale -= z_climbrate;
		//show_debug_message("Horizontal Missile")
		   	if (image_xscale > scale_min_threshold) && (image_xscale < scale_max_threshold) {	

	var centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
var centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;
instance_create_depth(centerX,centerY,0,objSMOKE1)
}
}

if (doVerticalMissileStuffs = true) {
		image_xscale += z_climbrate;
		image_yscale += z_climbrate;

if (image_xscale >= scale_max_threshold * 2) {
	//(objPLAYER, SpritePLAYERBULLET, "PELLET", 30, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "DUMB", objPLAYERPROJECTILE, 90)
instance_destroy()
if (instance_exists(objPLAYER)) {
Ultimate_Bullet_Gen(objENEMY, secondary_stage, "SECONDARY", 3, 0, 0, "AIR", x, y, 0, 0, VulcanFire, -900, "WEAKEST HOMING", objENEMYPROJECTILE, 0)
}
}
}




