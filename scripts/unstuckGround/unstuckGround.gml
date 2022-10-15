// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unstuckGround(){
	var _broke = false
	if not place_free(x, y) {
		for(var _dist = 1; _dist <= 48 and not place_free(x, y); _dist++) {
			for(var _dir = 0; _dir<360; _dir+= 10) {
				var _x = x + lengthdir_x(_dist, _dir) 
				var _y = y + lengthdir_y(_dist, _dir) 
				if place_free(_x, _y) {
					x = _x //lerp(x, _x, 0.4)
					y = _y //lerp(y, _y, 0.4)
					_broke = true
					break
				}
			}
			if _broke
				break
		}
		vspd = 0
		hspd = 0
	}
}