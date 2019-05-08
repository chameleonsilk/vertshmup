/// @description Insert description here
// You can write your code in this editor
var centerX = x - sprite_get_xoffset(sprite_index) + sprite_width / 2;
var centerY = y - sprite_get_yoffset(sprite_index) + sprite_height / 2;
instance_create_depth(centerX,centerY,0,objSMOKE1)

   image_xscale -= 0.20;
   image_yscale -= 0.20;

if image_yscale <= 0.40 then instance_destroy();







