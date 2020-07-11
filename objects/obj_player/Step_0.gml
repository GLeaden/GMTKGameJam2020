/// @description Insert description here
// You can write your code in this editor
//Move in four directions when pressing arrow keys.
if (keyboard_check(vk_left)  || keyboard_check(ord("A"))) 
{
	if(place_meeting(x+spd, y, obj_testWall))
	{
		while(!place_meeting(x + sign(spd), y, obj_testWall))
			x-= spd;
	}
}
if (keyboard_check(vk_right) || keyboard_check(ord("D")))
{
	if(place_meeting(x+spd, y, obj_testWall))
	{
		while(!place_meeting(x + sign(spd), y, obj_testWall))
			x-= spd;
	}
}
if (keyboard_check(vk_up)    || keyboard_check(ord("W")))

if (keyboard_check(vk_down)  || keyboard_check(ord("S")))

if (mouse_x < obj_player.x){
	image_xscale=-1;
}
else{
	image_xscale=1;
}
if (mouse_y < obj_player.y){
	sprite_index = spr_ladyback;
}
else{
	sprite_index = spr_lady;
}