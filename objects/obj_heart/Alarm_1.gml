/// @description Insert description here
// You can write your code in this editor
if(direction = 90)
{
	direction = 270;
	sprite_index = spr_heartF;
}
else if(direction = 270)
{
	direction = 90;
	sprite_index = spr_heartB;
}
else if(direction = 180)
{
	direction = 360;
}
else
{
	direction = 180;
}
alarm[1] = 90;