/// @description Insert description here
// You can write your code in this editor
srMinutes=0
srSeconds = srTimer/1000000
while(srSeconds>=60){
	srMinutes++;
	srSeconds-=60
}
srSeconds = string_format(srSeconds,2,1)
srSeconds = string_replace(srSeconds," ","0")
srText = string(srMinutes)+":"+srSeconds
//draw_set_font(fnt_retroDeco)
draw_set_font(-1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
if(instance_exists(obj_debug)) {
	draw_text(camera_get_view_x(0),camera_get_view_y(0),("Camera X:"+string(camX)+" Y:"+string(camY)));
}else{
	if(instance_exists(obj_player)){
		draw_text(camera_get_view_x(0),camera_get_view_y(0),("Rooms Cleared: "+string(obj_player.roomsCleared)+"/8"))
	}
}
draw_set_halign(fa_right)
draw_text(camera_get_view_x(0)+camera_get_view_width(0),camera_get_view_y(0),srText)