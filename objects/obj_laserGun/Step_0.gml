/// @description Insert description here
// You can write your code in this editor
if (ownedByPlayer){
  x = obj_player.x;
  y = obj_player.y;
  if (mouse_check_button(mb_left)){
	
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
  
  

}

