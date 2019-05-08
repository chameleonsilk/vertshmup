//var enemy_code = argument0   // used by LOAD SPAWN DATA DONT TOUCH ITS NOT BROKEN!
//var xpos = argument1
//var ypos = argument2


//Ultimate_Enemy_Gen(objENEMY, SpriteENEMY1, x, y, 3, objENEMYBULLET2, 80, 500, "Off_Screen", "Line Down 180", 5, 5, 1, 10, 10, -200)
//var object_type = argument0 // object type
//var sprite_used = argument1 // sprite name
//var xloc = argument2 // inital x pos
//var yloc = argument3 // inital y pos
//var hitpoints = argument4 // integer
//var enemy_weapon = argument5 // object name

//var weapon_min_range = argument6 // integer
//var weapon_max_range = argument7	// integer
//var state = argument8 
//var behavior = argument9  //string "Line Down 0", "Line Down 180", Stop and Stare"
//var velocity = argument10 // integer
//var weapon_velocity = argument11 // integer
//var weapon_fire_rate = argument12 // rate of fire
//var score_tally = argument13 // score increase
//var rank_tally = argument14 // rank increase on death
//var drawdepth = argument15 // draw depth

//if (argument0) = 0 {
// = objNOTHING;
//	}
	if (argument0) = 1 {
	Ultimate_Enemy_Gen(objENEMY, SpriteENEMY1, argument1, argument2, 10, SpriteMISSILE1, 100, 400, "Off_Screen", "Stop and Stare", 5, 3, 400, 12, 10, -200)

	}
	if (argument0) = 2 {
	Ultimate_Enemy_Gen(objENEMY, SpriteENEMY0, argument1, argument2, 4, SpriteENEMYBULLET1, 75, 940, "Off_Screen", "Line Down 180", 1, 6, 40, 10, 10, -200)
	
	}
	
	if (argument0) = 3 {
	Ultimate_Enemy_Gen(objGROUNDENEMY, SpriteBOAT, argument1, argument2, 50, SpriteAAAFIRE, 0, 630, "Off_Screen", "Small Boat", 1, 2, 250, 30, 10,-199)
	}
	
	if (argument0) = 4 {
	Ultimate_Enemy_Gen(objENEMY, SpriteENEMY2, argument1, argument2, 10, SpriteENEMYBULLET0, 50, 630, "Off_Screen", "Line Down 0", 1, 2, 10, 100, 10, -200)
	}
	
	if (argument0) = 5 {
	Ultimate_Enemy_Gen(objENEMY, SpriteENEMY0, argument1, argument2, 10, SpriteENEMYBULLET1, 50, 630, "Off_Screen", "Across From Left", 1, 5, 25, 100, 10, -200)
	}
	
	if (argument0) = 6 {
	Ultimate_Enemy_Gen(objENEMY, SpriteENEMY0, argument1, argument2, 10, SpriteENEMYBULLET1, 50, 630, "Off_Screen", "Across From Right", 1, 5, 25, 100, 10, -200)
	}
	
	if (argument0) = 7 {
	Ultimate_Enemy_Gen(objENEMY, SpriteENEMY0, argument1, argument2, 10, SpriteENEMYBULLET1, 50, 630, "Off_Screen", "From Behind", 1, 5, 25, 100, 10, -200)
	}
	
	if (argument0) = 8 {
	Ultimate_Enemy_Gen(objENEMY, SpriteENEMY0, argument1, argument2, 10, SpriteENEMYBULLET1, 50, 630, "Off_Screen", "Diagonal Across From Left", 1, 5, 25, 100, 10, -200)
	}
	
	if (argument0) = 9 {
	Ultimate_Enemy_Gen(objENEMY, SpriteENEMY0, argument1, argument2, 10, SpriteENEMYBULLET1, 50, 630, "Off_Screen", "Diagonal Across From Right", 1, 5, 25, 100, 10, -200)
	}
	
	if (argument0) = 999 {
	Ultimate_Enemy_Gen(objENEMYBOSS1, SpriteENEMYBOMBER, argument1, argument2, 500, SpriteENEMYBULLET3, 25, 630, "Off_Screen", "Sway", 1, 2, 250, 100, 10, -200)
	}
	
	if (argument0) = 11 {
	Ultimate_Enemy_Gen(objGROUNDENEMY, SpriteSUB, argument1, argument2, 100, SpriteVERTMISSILE1, 50, 550, "Off_Screen", "Sub",  1, 4, 80, 10, 10,-199)
	}
	
	
		if (argument0) = 10 {
	// =  objOILRIG
	Ultimate_Enemy_Gen(objGROUNDENEMY, SpriteOILRIG, argument1, argument2, 150, SpriteVERTMISSILE0, 20, 600, "Off_Screen", "Structure Scroll",  1, 3, 2000, 10, 10,-199)
	}
	
		if (argument0) = 22 {
	Ultimate_Enemy_Gen(objGROUNDENEMY, SpriteAAA, argument1, argument2, 25, SpriteAAAFIRE1, 20, 600, "Off_Screen", "Tank", 1, 3, 150, 10, 10,-199)
	}
	
			if (argument0) = 21 {
	Ultimate_Enemy_Gen(objGROUNDENEMY, SpriteTANK0, argument1, argument2, 50, SpriteENEMYBULLET2, 20, 500, "Off_Screen", "Tank", 1, 2, 200, 10, 10,-199)
	}
	
				if (argument0) = 20 {
	Ultimate_Enemy_Gen(objGROUNDENEMY, SpriteTANK1, argument1, argument2, 50, SpriteVERTMISSILE0, 20, 500, "Off_Screen", "Tank",  1, 3, 700, 10, 10,-199)
	}
	
				if (argument0) = 23 {
	Ultimate_Enemy_Gen(objENEMY, SpriteTANK3, argument1, argument2, 50, SpriteVERTMISSILE1, 20, 600, "Off_Screen", "Tank",  1, 3, 725, 10, 10,-199)
	}
	
	
	

