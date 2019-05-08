/// @description ENEMY SPAWNED
hittable = false;
destructable = true;
image_xscale = 2;
image_yscale = 2;
//state = "Entrance";
velocity = 1
phase = 0;
//depth = 200
image_angle = 90
current_phase = 0;
phase_length = 2000;
start_time = time;
hold_fire = true;
destroyedparts = 0;
//image_angle = -90
 // Set shooting timer to a second
                    // Set the “health” of the enemy

//image_angle = 90

hp = 500 * rankvalue




freezespawns = true;
ebshown = 1

//

	
if (freezespawns = true) {
audio_stop_all()
audio_play_sound(BossM, 1, true)	
}
		
/////////////////////////// CREATE THE CHILD PARTS
//			Ultimate_Turret_Gen(objBOSS2, objTURRET, SpriteTAILTURRET1, x - 10, y, -900, sway, 1, path_action_reverse,false,1,"normal spray",10, true, true);		
//			Ultimate_Turret_Gen(objBOSS2, objTURRET, SpriteTAILTURRET1, x + 10, y, -900, sway, 1, path_action_reverse,false,1,"normal spray",10, true, true);		
//			child.destroyedparts += 2
			//Ultimate_Turret_Gen(objBOSS2, objTURRET, SpriteTAILTURRET1, x + 5, y, -900, sway, 1, path_action_reverse,false,1,"normal spray",10 * rankvalue, true, true);		
	//var parent_name = argument0; // the name of object that this is a child of
//var turret_object_name = argument1; // the turret object
//var sprite = argument2; // select the picture used for the turret instance
//var xlocation = argument3; // xlocation (should be the offset locations to place the turret properly on the enemy
//var ylocation = argument4; // ylocation (should be the offset locations to place the turret properly on the enemy
//var thisdepth = argument5; // depth of instance
//var path = argument6; // path to use (should be set to the parents path)
//var velocity_on_path = argument7; // integer
//var path_action = argument8; // path_action_continue / restart / reverse stop
//var absolute = argument9; // boolean
//var firerate = argument10; // interger (Delay between shots)
//var behavior = argument11; // string (ultimately determines the turret type i.e 360, 180 degree etc)
//var hp = argument12; // health of the turret
//var hittable = argument13; // is it a hittable object boolean?
//var destructable = argument14; // can it be destroyed boolean?
///////////////////////////

			
		
	
	path_start(sway,velocity, path_action_restart, 0);
		
	
	





