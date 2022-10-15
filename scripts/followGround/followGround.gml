// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function followGround(){
	if not variable_instance_exists(self, "riding") {
		riding = noone
		last_riding = noone
		last_x = 0
		last_y = 0
	}	
	
	var collision_list = ds_list_create()
	if not place_free(x, y+1)
		instance_place_list(x, y+1, all, collision_list, false)
	else {
		riding = noone
		last_x = 0
		last_y = 0
	}
	
	var _size = ds_list_size(collision_list)
	if _size <= 2
	for (var i = 0; i < _size; i++) {
		var _inst = collision_list[|i]
		if _inst  != noone
			if _inst != self and _inst.solid {
				riding = _inst
				break
			}
				
	}

	ds_list_destroy(collision_list)
	
	if riding != noone and last_riding == riding {
		if last_x != 0 and last_y != 0 {
			var _xdiff = riding.x - last_x
			var _ydiff = riding.y - last_y

			x+= _xdiff
			y+= _ydiff
		}

		last_x = riding.x
		last_y = riding.y
	}
	if last_riding != riding {
		last_x = 0
		last_y = 0
	}
	last_riding = riding
}