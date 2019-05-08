/// @description Insert description here
// You can write your code in this editor
if (new_logic = true){
new_logic = false
Load_Data_Matrix_huh("stage_0.txt", 1440)	
Load_Data_Matrix("stage_0.txt", 0)
if (stage = 0) {
	//next_map_queue = "stage_0.txt"
next_enemy_queue = ("enemy_1.txt")
}

if (stage = 1) {
next_enemy_queue = ("enemy_1.txt")
}
if (stage = 2) {
next_enemy_queue = ("enemy_2.txt")
}
if (stage = 3) {
next_enemy_queue = ("enemy_3.txt")
}
if (stage = 4) {
next_enemy_queue = ("enemy_4.txt")
}
if (stage = 5) {
next_enemy_queue = ("enemy_5.txt")
}
//y = 640

}



if (y >= 1440) {
	//mp_grid_destroy(global.grid)
	//global.grid = mp_grid_create(0, 0, 24, 32, 20, 20);

y = 720



Load_Data_Matrix(next_map_queue, 0)
//Load_Obj_Matrix(next_obj_queue, 0)
Load_Enemy_Matrix(next_enemy_queue, 0)
}

	//mp_grid_add_instances(global.grid, objENEMYPROJECTILE, true);
	//mp_grid_clear_all(global.grid)
	//mp_grid_add_instances(global.grid, objENEMY, true);



