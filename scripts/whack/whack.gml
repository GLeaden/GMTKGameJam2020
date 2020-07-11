/// @function whack(melee)
/// @description whack(melee)
/// @arg melee object_index

var _melee = argument0;

var hurtbox = instance_create_layer(_melee.x, _melee.y, "BulletLayer", _melee.hit);

with (hurtbox){
	destX = mouse_x + _melee.hit.swing_width;
	destY = mouse_y + _melee.hit.swing_width;
	if (mouse_x < obj_player.x){
		direction = point_direction(x, y, destX, destY);
		x = x-50;
	}
	else
	{
		direction = point_direction(x, y, destX, destY);
		x = x+50;
	}
	image_angle = direction;
}

return;