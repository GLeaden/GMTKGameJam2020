/// @function plankState_Free(melee)
/// @description plankState_Attack(melee)
/// @arg melee object_index
keyattack = mouse_check_button(mb_right)
var _melee = argument[0]

if (_melee.ownedByPlayer){
	  _melee.x = obj_player.x;
	  _melee.y = obj_player.y;
	  _melee.image_angle = point_direction(_melee.x,_melee.y,mouse_x, mouse_y);
  
	  if (mouse_x < obj_player.x){
		_melee.image_yscale=-1;
	  }
	  else{
		  _melee.image_yscale=1;
	  }
	if (keyAttack) melee_state = SWINGSTATE.ATTACK;
}