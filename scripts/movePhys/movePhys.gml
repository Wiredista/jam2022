// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movePhys(){
	var _xd = sign(hspd)
	var _yd = sign(vspd)
	
	for(var _x = 1; _x <= abs(hspd); _x++) {
		if place_free(x+_xd, y) x+=_xd;
		else hspd = 0
	}
	
	for(var _y = 1; _y <= abs(vspd); _y++) {
		if place_free(x, y+_yd) y+=_yd;
		else vspd = 0
	}
}