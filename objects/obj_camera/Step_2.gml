/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	newCamX=((obj_player.x div 1024) * 1024)
	newCamY=((obj_player.y div 768) * 768)
	camX=lerp(camX,newCamX,.1)
	camY=lerp(camY,newCamY,.1)
	camera_set_view_pos(view_camera[0], camX, camY);
}
if(mouse_check_button_released(mb_left)) scrshake(false, 0)