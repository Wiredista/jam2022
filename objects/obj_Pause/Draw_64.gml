if(pause){
		
	instance_deactivate_all(true);
	draw_set_color(c_white)
	draw_text(room_width/2,room_height/2,"Pause")
}
else {
	instance_activate_all()
}


