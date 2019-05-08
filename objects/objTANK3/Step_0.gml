/// @description Insert description here
// You can write your code in this editor
var enemy_fire_rate1 = 3
var enemy_fire_rate2 = 9

if (alarm[0] <= 0) {
		alarm[0] = room_speed * enemy_fire_rate1
		alarm[1] = room_speed * enemy_fire_rate2
}

if (y > 700) {instance_destroy()}

if (hp <= 0)
{
	instance_destroy()
}


var x_init = x
var y_init = y
var leave_area = 1000


//grid = mp_grid_create(0, 0, room_width div 32, room_height div 32, 32, 32);
//mp_grid_add_instances(grid, objNOTHING, false);
//with (objSUB)
//  {

   //if mp_grid_path(grid, directed_attack, x, y, objPLAYER.x, objPLAYER.y, 1) {
	//  path_start(directed_attack,3,path_action_restart,1)
//   }
 //     {
    
 //     }
 //  }

//path_set_precision(directed_attack, 0);
//path_set_kind(directed_attack,1)
//path_set_closed(directed_attack,0)


//path_insert_point(directed_attack, 0, x_init, y_init, 75);
//path_insert_point(directed_attack, 1, x_init, leave_area, 50);
//path_insert_point(directed_attack, 0, x_init, y_init, 60);
//path_insert_point(directed_attack, 1, room_width / 2, room_height, 60);
//path_insert_point(directed_attack, 2, (choose(x - 200, x + 200)), 900, 1);

//path_start(directed_attack, 1, path_action_stop, 0);
//mp_grid_add_instances(global.grid, objBOAT, true);
//mp_grid_add_instances(global.grid, objBOAT, true);
//mp_grid_add_instances(global.grid, objSUB, false);
//with (objBOAT) {
 if (instance_exists(objPLAYER)) {
  enemy_path = path_add()
//if (distance_to_object(objPLAYER) >= 100) {
//	image_angle = direction
   //path = path_add();
   
   
   if mp_grid_path(global.grid, enemy_path, x, y, x, 900, 0)
      {
	  path_assign(global.dummypath, enemy_path);
      path_start(enemy_path, 1, path_action_stop, 0);
      }
	}
 //  }
   //else {
	
   //}
//}
//}
//}
	
	if (hp <= 0) and (destructable = true) {
instance_destroy()
//instance_destroy(Child)
//Powerup_Generator(250)
}