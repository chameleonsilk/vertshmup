/// @description Insert description here
// You can write your code in this editor
image_alpha -= .05
image_xscale += choose(0.5, 0.15, 0.20)
image_yscale += choose(0.5, 0.15, 0.20)
draw_self()
if (image_xscale >= 2) {
instance_destroy()	
}