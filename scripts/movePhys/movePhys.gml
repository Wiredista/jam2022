// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function movePhys(){
	for(var _x = 1; _x <= hspd; _x++) {
		if place_free(x+1, y) x++;
		else hspd = 0
	}
	
	for(var _x = 1; _x <= hspd; _x++) {
		if place_free(x, y+1) y++;
		else hspd = 0
	}
}