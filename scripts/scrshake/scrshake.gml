/// @function scrshake(shaking, range)
/// @description scrshake(shaking, range)
/// @arg shaking boolean
/// @arg range real

var _shaking = argument0;
var _range   = argument1;


if (_shaking){
    _angle=random_range(-1*_range,_range)
    camera_set_view_angle(view_camera[0],_angle);
}else
{
    camera_set_view_angle(view_camera[0],0);
}