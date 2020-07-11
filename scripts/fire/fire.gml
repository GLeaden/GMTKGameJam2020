/// @function fire(gun)
/// @description fire(gun)
/// @arg gun object_index
var _gun = argument0;

var projectile = instance_create_layer(_gun.x, _gun.y, "BulletLayer", _gun.bullet);
audio_play_sound(_gun.gunshot, 10 , false);
if (_gun.object_index == obj_laserGun){
	obj_player.hMove = 0;
	obj_player.vMove = 0;
}
else{
	with (projectile){
	destX = mouse_x + random_range(_gun.bullet_spread*-1, _gun.bullet_spread)
	destY = mouse_y + random_range(_gun.bullet_spread*-1, _gun.bullet_spread)
	direction = point_direction(x, y, destX, destY);
	image_angle = direction;
	}
}

return;