/// @function fire(gun)
/// @description fire(gun)
/// @arg gun object_index
var _gun = argument0;

instance_create_layer(_gun.x, _gun.y, "BulletLayer", _gun.bullet);
return;