/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(!obj_player.dead){
		//move camera to top left of current room
		newCamX=((obj_player.x div global.idealWidth) * global.idealWidth)
		newCamY=((obj_player.y div global.idealHeight) * global.idealHeight)
		camX=lerp(camX,newCamX,.1)
		camY=lerp(camY,newCamY,.1)
		camera_set_view_pos(view_camera[0], camX, camY);	
	}else{
		//player is dead, do a zoom
		camWidth=camera_get_view_width(view_camera[0])
		camHeight=camera_get_view_height(view_camera[0])
		newCamX=obj_player.x - (camera_get_view_width(view_camera[0])/2)
		newCamY=obj_player.y - (camera_get_view_height(view_camera[0])/2)
		camX=lerp(camX,newCamX,.1)
		camY=lerp(camY,newCamY,.1)
		camWidth = lerp(camWidth, global.idealWidth*.25,.025)
		camHeight = lerp(camHeight, global.idealHeight*.25,.025)
		camera_set_view_size(view_camera[0], camWidth, camHeight)
		camera_set_view_pos(view_camera[0], camX, camY);	
	}
}


if(mouse_check_button_released(mb_left)) scrshake(false, 0)
if(scrShakeCooldown>0){
	//cooldown for screenshake
	scrShakeCooldown--
}else{
	//stop screenshake if cooldown done
	scrshake(false,0)
}

if(!obj_chest.opened){
	//tick the speedrun timer
	srTimer+=delta_time
}else{
	//set the global if chest opened
	global.srScore=srTimer
}