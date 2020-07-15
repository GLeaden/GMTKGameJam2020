/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_debug)) {
	draw_text(camera_get_view_x(0),camera_get_view_y(0),("Camera X:"+string(camX)+" Y:"+string(camY)));
}else{
	if(instance_exists(obj_player)){
		draw_text(camera_get_view_x(0),camera_get_view_y(0),("Rooms Cleared: "+string(obj_player.roomsCleared)+"/8"))
	}
}
