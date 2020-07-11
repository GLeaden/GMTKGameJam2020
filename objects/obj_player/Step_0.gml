/// @description Insert description here
// You can write your code in this editor
//Move in four directions when pressing arrow keys.
//spd = 3;

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));

hMove = (right - left) * spd;
vMove = (down - up) * spd;

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

x += hMove;
y += vMove;

if(mouse_check_button(mb_left)){
	if(cooldown == 0){
		if (projectile_weapon != pointer_null){
			fire(projectile_weapon);
			cooldown = projectile_weapon.fire_rate;
		}
	}
}

if (cooldown > 0) cooldown = cooldown - 1

if (mouse_x < obj_player.x){
	image_xscale=-1;
}
else{
	image_xscale=1;
}
if (mouse_y < obj_player.y-128){
	sprite_index = spr_ladyback;
}
else{
	sprite_index = spr_lady;
}