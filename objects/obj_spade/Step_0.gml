/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	instance_destroy();
}

if hitstun > 1
{
	hitstun -= 1;
}
else
{
	spd = 5;
	if (sprite_index = spr_cardHurt) sprite_index = spr_spadeF;
	if (obj_player.x div spd < x div spd)
			{
				hMove = -spd;
			}
			else
			{
				if(obj_player.x div spd > x div spd)
				{
					hMove = spd;
				}else
				{
					hMove = 0;
				}
			}

			if (obj_player.y div spd < y div spd)
			{
				vMove = -spd;
			}
			else
			{
				if(obj_player.y div spd > y div spd){
					vMove = spd;
				}else{
					vMove = 0;
				}
			}
	/*
	if (instance_exists(obj_player))
	{
		move_towards_point(obj_player.x,obj_player.y,max(spd,0));
		if (obj_player.y < y)
		{
			sprite_index = spr_spadeB;
		}

		if (obj_player.y > y)
		{
			sprite_index = spr_spadeF;
		}
	}
	*/
}
/*
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
*/

while(tilePlaceMeeting(x+hMove,y,"Wall")){
	hMove=lerp(hMove,0,.1)
	}
while(tilePlaceMeeting(x,y+vMove,"Wall")){
		vMove=lerp(vMove,0,.1)
}

while(place_meeting(x+hMove,y,obj_furniture)){
		hMove=lerp(hMove,0,.1)
	}
while(place_meeting(x,y+vMove,obj_furniture)){
		vMove=lerp(vMove,0,.1)
}

y += vMove;
x += hMove;
