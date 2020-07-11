/// @description Insert description here
// You can write your code in this editor
if (obj_player.x < x)
{
	hMove = -spd;
}
else
{
	hMove = spd;
}

if (obj_player.y < y)
{
	vMove = -spd;
}
else
{
	vMove = spd;
}

if(place_meeting(x + hMove, y, obj_testWall))
{
	while(!place_meeting(x + sign(hMove), y, obj_testWall))
	{
		x += sign(hMove);
	}
	hMove = 0;
}

if(place_meeting(x, y + vMove, obj_testWall))
{
	while(!place_meeting(x, y + sign(vMove), obj_testWall))
	{
		y += sign(vMove);
	}
	vMove = 0;
}

y += vMove;
x += hMove;

if (obj_player.y < obj_spade.y)
{
	sprite_index = spr_spadeB;
}

if (obj_player.y > obj_spade.y)
{
	sprite_index = spr_spadeF;
}
if (obj_player.y < obj_club.y)
{
	sprite_index = spr_clubB;
}

if (obj_player.y > obj_club.y)
{
	sprite_index = spr_clubF;
}