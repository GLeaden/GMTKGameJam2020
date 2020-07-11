/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x,obj_player.y,max(speed,0));
}