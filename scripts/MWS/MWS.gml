checkMissile = argument0

var mwsx
var mwsy

mwsx = -40
mwsy = -40

if (instance_exists(checkMissile)) {
	if (checkMissile.x >= 480)
		{
		mwsx = 440
		mwsy = checkMissile.y
		}
		
			if (checkMissile.x <= 0)
		{
		mwsx = 0
		mwsy = checkMissile.y
		}
		
			if (checkMissile.y >= 640)
		{
		mwsx = checkMissile.x
		mwsy = 600
		}
	
		if (checkMissile.y <= 0)
		{
		mwsx = checkMissile.x
		mwsy = 40
		}	
	}	
	
	if (!instance_exists(objMWS)) {
	instance_create_depth(mwsx,mwsy, 0, objMWS)
	}
	else {
	objMWS.x = mwsx;
	objMWS.y = mwsy;
		}
	
	



	
