/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy()
}

/*
	spd = 2;

	if (instance_exists(obj_player))
	{
		move_towards_point(obj_player.x,obj_player.y,max(spd,0));
		if (obj_player.y < y)
		{
			sprite_index = spr_clubB;
		}

		if (obj_player.y > y)
		{
			sprite_index = spr_clubF;
		}
		if (obj_player.y < y)
		{
			sprite_index = spr_clubB;
		}

		if (obj_player.y > y)
		{
			sprite_index = spr_clubF;
		}
	}
}
*/

if hitstun > 1
{
	hitstun -= 1;
	sprite_index = spr_cardHurt;
}
else
{
	if (sprite_index = spr_cardHurt) sprite_index = spr_clubF;
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
}
