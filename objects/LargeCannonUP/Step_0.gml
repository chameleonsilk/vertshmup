/// @description Insert description here
// You can write your code in this editor
//aimtime += 1;
//if aimtime = 40 then {
//instance_destroy();                  // Destroy the instance
//aimtime = 0
//}

vspeed += +0.1 * rankvalue;

if vspeed >= 7 then { vspeed = 7}

if (y > room_height + 100) {
instance_destroy();
}   