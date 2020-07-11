/// @description Insert description here
// You can write your code in this editor
direction = irandom_range(0,360);
alarm[0] = 30;

if(direction < 180)
{
	sprite_index = spr_diamondB;
}

if(direction > 180)
{
	sprite_index = spr_diamondF;
}