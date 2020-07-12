/// @function scrshake(shaking, range)
/// @description scrshake(shaking, range)
/// @arg shaking boolean
/// @arg range real

var _shaking = argument0;
var _range   = argument1;


if (_shaking){
	show_debug_message("shaking");
    _angle=random_range(-0.25,0.25)
    camera_set_view_angle(view_camera[0],_angle);
}else
{
    camera_set_view_angle(view_camera[0],0);
}