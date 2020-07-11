/// @description Insert description here
// You can write your code in this editor
if (ownedByPlayer){
  x = obj_player.x;
  y = obj_player.y;
  if (mouse_check_button(mb_left)){
	if(mouse_check_button_pressed(mb_left)) noise = audio_play_sound(gunshot, 10, false);
  }
	else{
		image_angle = point_direction(x,y,mouse_x, mouse_y);
  
		if (mouse_x < obj_player.x){
			image_yscale=-1;
		}
		else{
			image_yscale=1;
		}
	} 

	if(mouse_check_button_released(mb_left)) {
		audio_stop_sound(noise);
		audio_play_sound(gunshot,10,false);
	}
}