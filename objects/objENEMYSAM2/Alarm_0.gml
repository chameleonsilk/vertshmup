/// @description Insert description here
// You can write your code in this editor

   	
	if (image_xscale > 0.01) && (image_xscale < 0.5)
		{
		image_alpha = 0.50;
		}
	
	if (image_xscale < 1.00) && (image_xscale > 0.5)
		{
		image_alpha = 0.75;
		}

	if (image_xscale >= 1.00) && (image_xscale < 2.00)
	{
		image_alpha = 1.00;
	}
	
	if (image_xscale > 2.0) && (image_xscale < 3.0)
		{
		image_xscale += .4;
		image_yscale += .4;
		image_alpha = 0.25;
		depth = -2000;
		}
		
	if (image_xscale > 3) && (image_xscale < 5)
		{
		image_alpha = 0.13;
		image_xscale += .8
		image_yscale += .8;
		depth = -2000;
		}
		
					if (image_xscale > 5) && (image_xscale < 10.0)
		{
		image_alpha = 0.07;
		image_xscale += 1.6
		image_yscale += 1.6
		depth = -2000;
		}
					if (image_xscale > 10) && (image_xscale < 20.0)
		{
		image_alpha = 0.03;
		image_xscale += 1.6
		image_yscale += 1.6
		depth = -2000;
		}
		
							if (image_xscale > 20)
		{
		image_alpha = 0.01;
		image_xscale += 1.6
		image_yscale += 1.6
		depth = -2000;
		}
		
		if (image_xscale >= 40)
		{
	
		//var thingy = AI_Bullet_Generator(objENEMYAIM4, 1, 6, 0, 0, Mute, -1006, x, y, 0, 0)
			instance_destroy()
		}



