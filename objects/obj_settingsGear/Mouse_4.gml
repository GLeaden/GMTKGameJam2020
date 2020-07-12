/// @description Insert description here
// You can write your code in this editor
if (obj_titleScreen.sprite_index == spr_titleImage)
{
	obj_titleScreen.sprite_index = spr_instructionImage;
	sprite_index = spr_backButton;
}
else{
	obj_titleScreen.sprite_index = spr_titleImage;
	sprite_index = spr_gear;
}
