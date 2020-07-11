if (instance_exists(obj_player))
{
	if (ownedByPlayer){
	  x = obj_player.x;
	  y = obj_player.y;
	  image_angle = point_direction(x,y,mouse_x, mouse_y);
  
	  if (mouse_x < obj_player.x){
		image_yscale=-1;
	  }
	  else{
		  image_yscale=1;
	  }
	}

	if (keyAttack) state = SWINGSTATE.ATTACK;
}