/// @description KEY POLLING/PLAYER UPDATES
// You can write your code in this editor
if instance_exists(objPLAYER) = true {
					//image_index = 0

	var currentx = objPLAYER.x
	var currenty =  objPLAYER.y + 32
x =  currentx
y = currenty


if (wing_set = 1) {
	image_angle = 90;
}

if (wing_set = 2) {
	image_angle = 90;
}


if (wing_set = 3) {
//	image_angle += 2
image_angle = 90;
	//if (image_angle >= 359) {image_angle = 0}
}

if (wing_set = 4) {
//	image_angle += 2
image_angle = 90;
	//if (image_angle >= 359) {image_angle = 0}
}

}
//imageindex = 0

	if instance_exists(objPLAYER) != true {
	wingmancount = 0;
	instance_destroy(objWMAN3)}
	
	