#region controls

var left_axis = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var up_axis = keyboard_check(ord("S")) - keyboard_check(ord("W"))

hspd = lerp(hspd, left_axis *6, 0.2)
if up_axis < -0.5 and not place_free(x, y+1)
	vspd -= 7

#endregion

movePhys()
unstuckGround()
followGround()
vspd += .1