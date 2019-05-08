/// @description Insert description here
// You can write your code in this editor
	if (alarm[0] > 0) { 	image_blend = make_colour_hsv(0, (irandom_range(60,64)), (irandom_range(252,255)));}
	if (alarm[0] < 0) {
		alarm[0] = decay_time;
	}
	image_alpha -= 0.015