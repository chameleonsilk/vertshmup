

hp = 0;
spread_x = 0;
spread_y = 0;
SUB_destroyedparts = 0;
SUB_shown = 0;
phase_of_time = 0;
spawn_offset = 20;
phase = 0; //instance.var
startedstage = 0;//instance.var
//globalvar surface_x
//globalvar surface_y
/// @description Insert description here
// You can write your code in this editor
globalvar speed_of_image;
globalvar image_start;
globalvar tile_to_draw;
globalvar freezespawns;
globalvar scaling;
globalvar debug_show;
//globalvar sway;
globalvar bombpowerup;
globalvar bombtime;
globalvar powerup;
globalvar aimpowerup;
globalvar rankvalue;
globalvar ddshown;
globalvar killamount;
globalvar killamountcount;
globalvar playx;
globalvar playy;
globalvar shot_direction;
globalvar invince;
globalvar BFMbooster;
globalvar globalpathchoice;
globalvar time;
globalvar spawnxpos;
globalvar spawnypos;
globalvar enemyspeed;
globalvar stage;
globalvar warpchoice;
globalvar ebshown;
globalvar maxhp;
//globalvar hp;
globalvar gamestart;
globalvar kbleft;
globalvar kbright;
globalvar fire_rate;
globalvar mfire_rate;
globalvar ribbonvalue;
globalvar ribboncount;
globalvar wingmancount;
globalvar DD_destroyedparts;
globalvar EB_destroyedparts;
globalvar flare;
globalvar chaff;
globalvar w1dispersion1;
globalvar w1dispersion2;
globalvar w2dispersion1;
globalvar w2dispersion2;
globalvar w3dispersion1;
globalvar w3dispersion2;
globalvar beep;
globalvar extended;
globalvar transition;
globalvar wing_set;
globalvar tile_data;
globalvar obj_data;
globalvar enemy_data;
globalvar tile_to_draw;
globalvar obj_to_draw;
globalvar whats_hot_right_now;
globalvar next_map_queue;
globalvar next_obj_queue;
globalvar next_enemy_queue;
globalvar Geforce;

global.dummypath = path_add();
score  = 0;
lives  = 2;
health = 100;
alarm[0] = 60;
alarm[1] = 1;
alarm[2] = 1;
extended = 0
ebshown = 0;
ddshown = 0;
killamountcount = 0;
killamount = 0;


bombtime = 2;

shot_direction = 0;
rankvalue = 1;
invince = 0;
BFMbooster = 1;
time = 0;
globalpathchoice = 0;
spawnxpos = 0;
spawnypos = 0;
enemyspeed = 0;
warpchoice = 0;
maxhp = 1000;
Geforce = 1;
gamestart = 0;
kbleft = 0;
kbright = 0;

ribbonvalue = 100;
ribboncount = 0;

DD_destroyedparts = 0;


flare = 4;
chaff = 4;
beep = false;

transition = true;

//whats_hot_right_now = "Stage_1.txt"
powerup = 1;
bombpowerup = 1;
aimpowerup = 1;
wing_set = 0;
wingmancount = 0;
debug_show = false;
freezespawns = false;
stage = 1


instance_create_depth(room_width / 2, room_height - 200, -1001, objPLAYER);

    		if wingmancount = 1 
	{
	instance_create_depth(objPLAYER.x - 32, y, -999, objWMAN1)
	}
if wingmancount = 2
	{	
	instance_create_depth(objPLAYER.x - 32, y, -999, objWMAN1)
	instance_create_depth(objPLAYER.x + 32, y, -999, objWMAN2)
	}
//
if wingmancount = 3
	{
	instance_create_depth(objPLAYER.x - 32, y, -999, objWMAN1)
	instance_create_depth(objPLAYER.x + 32, y, -999, objWMAN2)
	instance_create_depth(objPLAYER.x, y + 32, -999, objWMAN3)
	}

// PATHS AND BEHAVIOURS

Geforce -= 0.01;

if (Geforce <= 1) {
Geforce = 1	
}

	
//globalvar Array2D;
instance_create_depth(0,0,0,objMAPPER)

show_debug_overlay(true)
//instance_create_depth(0,-640,0,Phantom_Scripter)
//Load_Data_Matrix("Stage_1.txt", 0)	






