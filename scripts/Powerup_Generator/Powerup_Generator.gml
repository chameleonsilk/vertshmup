/// example usage
// Powerup_Generator(50)

//A1 scoreincrease
if (extended = 0) && (score >= 10000) {
	lives += 1
	audio_play_sound(Extend, 1, false) // Play destroy SFX
	extended = 1
	}
if (extended = 1) && (score >= 20000) {
	lives += 1
	audio_play_sound(Extend, 1, false) // Play destroy SFX
	extended = 2
	}
if (extended = 2) && (score >= 30000) {
	lives += 1
	audio_play_sound(Extend, 1, false) // Play destroy SFX
	extended = 3
	}

var score_increase =  argument0;
var pup_mode = argument1;


        killamountcount +=1                 // Counter for dropping powerups
        //score += score_increase;            // Adds to the global score variable
        killamount += 1                     // Total amount of kills in entire game session
		
		if (pup_mode = "Ground") {
		var desired_sprite = noone
		var collider_effect = ""
            if (killamountcount = 1) {
           // instance_create_depth(x, y, -2000, CannonUP); // Create VUCLAN UP
			desired_sprite = SpriteCANNON
			collider_effect = "Cannon"
			sfx = Cannon1;
            }
			
                if (killamountcount = 2) {
                instance_create_depth(x, y, -2000, Ribbon1); // Create BOMB UP
				desired_sprite = noone
				sfx = Cannon1;
                }
                    if (killamountcount = 3) {
                    //instance_create_depth(x, y, -2000, BombsUP); // Create MISSILE UP
					desired_sprite = SpriteBOMB
					collider_effect = "Bomb"
					sfx = Bomb;
                    }
                        if (killamountcount = 4) {
                        instance_create_depth(x, y, -2000, Ribbon1); // Create BFM UP
						desired_sprite = noone
						sfx = Cannon1;
						
                        }
                            if (killamountcount = 5) {
                           // instance_create_depth(x, y, -2000, MissilesUP); // Create RIBBION (SCORE UP)
							desired_sprite = SpriteMISSILE
							collider_effect = "Missile"
							sfx = Missile;
                            }
							
								if (killamountcount = 6) {
                            instance_create_depth(x, y, -2000, Ribbon1); // Create RIBBION (SCORE UP)
							desired_sprite = noone;
							 sfx = Cannon1;
                            }
							
							if (killamountcount >= 7) {
							  desired_sprite = SpriteWINGMANUP;
							  collider_effect = "Wing";
							  sfx = Wingman;
							  killamountcount = 0; // Reset Powerup Drop to start of Cycle
                            }						
		}
		
		if (pup_mode = "Air") {
							var desired_sprite = SpriteFRAGPEICE;
							  var collider_effect = "Frag";
							  var sfx = Pickup;
		}
					
								object_set_sprite(objFRAGMENT, desired_sprite)
							instance_create_depth(x, y, -2000, objFRAGMENT); // Create RIBBION (SCORE UP)
							objFRAGMENT.collider_effect = collider_effect	
							objFRAGMENT.sfx = sfx