/// @description Insert description here
// You can write your code in this editor
if instance_exists(objPLAYER = true) {
display_set_gui_size(480, 640);

var hs = highscore_value(1)

draw_set_color(c_red);
draw_set_font(fontIMPACT);
draw_text(280, 5, "SCORE: " +string(score));
draw_text(5, 20, string(Geforce) + " G");

if (debug_show = true) {
draw_text(5, 40, "NMAP: " +string(next_map_queue));
draw_text(5, 60, "NOBJ: " +string(next_obj_queue));
draw_text(5, 80, "NENE: " +string(next_enemy_queue));
draw_text(room_width - 70, 27,  "TIME: " +string(time));
//draw_text(5, 80, "NENE: " +string(next_enemy_queue));
}

draw_text(160,5, "HIGH: " +string(hs));

//draw_set_color(c_green);
//draw_text(175, room_height - 25, "TIME: " +string(time));
//draw_set_color(c_green);
//draw_text(245, room_height - 25, "PATH: " +string(globalpathchoice));





for (var n = 0; n < lives; n++){
draw_sprite(SpriteLIFE, 0, -10 + (n * 18), 18);
}

for (var n = 0; n < objPLAYER.bp; n++){
draw_sprite(SpriteAMMO, 0, 600 + (n * 18), 18);
}


var pc;
pc = health;
//var invincebar = invince * 50;
draw_healthbar(room_width - 20, room_height -5 , room_width -10, room_height -45, pc, c_black, c_red, c_lime, 2, true,false)
//draw_healthbar(room_width - 31, room_height -5 , room_width -21, room_height -45, invincebar, c_green, c_yellow, c_fuchsia, 2, true,false)
draw_text(room_width - 50, room_height -20 , string(health));
draw_set_font(fontMOVIE);
draw_set_color(c_yellow);
//draw_text(room_width - 70, room_height -60,  "DECOYS: " +string(flare));


//draw_text(45, room_height - 80, "KILLS: " +string(killamount));
draw_set_color(c_white);
draw_text(room_width - 70, 7, "RANK: " +string(rankvalue));



if invince = 1 {
	draw_set_color(c_lime);
	draw_text(room_width - 70, room_height - 40, "OVER-G ");
	}
	
	
	if invince = 0 {
		draw_set_color(c_green);
	draw_text(room_width - 70, room_height - 40, "OVER-G ");
	}
	
		if invince = 2 {
		draw_set_color(c_black);
	draw_text(room_width - 70, room_height - 40, "OVER-G ");
	}

	
if beep = false {
//	instance_create_depth(room_width - 90, room_height -20, -2000,OBJRWR_beeper_off)
}

if beep = true {
//	instance_create_depth(room_width - 90, room_height -20 ,-2000,OBJRWR_beeper_on)
}

draw_set_font(fontBIGMOVIE);
if (time <= 49) {
	draw_set_color(c_green);
draw_text(room_width / 3.25, 200, "MISSION START")
}
if (time >= 50) && (time <= 75) {
draw_set_color(c_lime);
draw_text(room_width / 3.25, 200, "MISSION START")
}
if (time >= 75) && (time <=100) {
draw_set_color(c_green);
draw_text(room_width / 3.25, 200, "MISSION START")
}
if (time >= 100) && (time <=150) {
draw_set_color(c_lime);
draw_text(room_width / 3.25, 200, "MISSION START")
}
if (time >= 8700) && (time <=8800) {
draw_set_color(c_lime);
draw_text(100, 200, "DESTROY BROWN BEAR")
}
if (time > 8800) && (time < 8900) {
draw_set_color(c_green);
draw_text(100, 200, "DESTROY BROWN BEAR")
}
if (time > 8900) && (time < 9000) {
draw_set_color(c_lime);
draw_text(100, 200, "DESTROY BROWN BEAR")
}
if (time >= 9000) && (time <=9100) {
draw_set_color(c_green);
draw_text(100, 200, "DESTROY BROWN BEAR")
}

if (lives = 0) {
draw_set_color(c_green);
draw_text(100, 200, "GAME OVER!")
}
}

