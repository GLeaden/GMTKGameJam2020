/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy();
}


if hitstun > 0
{
	hitstun -= 1;
	sprite_index = spr_cardHurt;
}
else
{
	if(sprite_index = spr_cardHurt) sprite_index = spr_heartF;
	if(go = 1)
	{
		vMove = spd;
		hMove = 0;
	}

	if(go = 2)
	{
		hMove = spd;
		vMove = 0;
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