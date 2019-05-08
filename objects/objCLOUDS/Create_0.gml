/// @description Insert description here
// You can write your code in this editor
destructable = false
image_alpha  = random_range(0.01, 0.06)

image_speed  = 0;            // Don't animate
image_index  = choose(0, 1,2,3); // Randomly choose a sub-image
vspeed = choose (8);                  // Scroll this instance downwards
hspeed = choose(-2,-1,0,1,2)