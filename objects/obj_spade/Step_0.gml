/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	if(!place_meeting(obj_spade.x, obj_spade.y, obj_testWall))
	{
		move_towards_point(obj_player.x,obj_player.y,max(speed,0));
	}
}

if (obj_player.y < obj_spade.y)
{
	sprite_index = spr_spadeB;
}

if (obj_player.y > obj_spade.y)
{
	sprite_index = spr_spadeF;
}

