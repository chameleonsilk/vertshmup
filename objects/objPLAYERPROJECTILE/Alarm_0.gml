/// @description Insert description here
// You can write your code in this editor
if instance_exists(objPLAYERPROJECTILE) {
if (doBombStuffs = true) {
//if (image_xscale > scale_min_threshold) && (image_xscale < scale_max_threshold) {
		image_alpha = 1
					image_xscale -= z_climbrate;
			image_yscale -= z_climbrate;
	//	}
		
			if (image_xscale <= scale_max_threshold) {
			image_alpha = 0.5;
			image_xscale -= z_climbrate /2;
			image_yscale -= z_climbrate /2;
		}
		
			if (image_xscale < scale_min_threshold)
		{
		instance_destroy()
		instance_create_depth(x,y,depth,objBOMBEXPLODEHELPER)
		}
		
					if (image_xscale < scale_max_threshold / 2) && (image_xscale > scale_min_threshold) {
		{
	//	if instance_place(x,y,objGROUNDENEMY) {
	//	instance_destroy()
	//	instance_create_depth(x,y,depth,objBOMBEXPLODEHELPER)
		}
	//	}
		
		
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
}

