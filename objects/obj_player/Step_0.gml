/// @description Insert description here
// You can write your code in this editor
//Move in four directions when pressing arrow keys.
if (keyboard_check(vk_left)  || keyboard_check(ord("A"))) x-= spd;
if (keyboard_check(vk_right) || keyboard_check(ord("D")))	x+= spd;
if (keyboard_check(vk_up)    || keyboard_check(ord("W"))) y-= spd;
if (keyboard_check(vk_down)  || keyboard_check(ord("S")))	y+= spd;

if (mouse_x < obj_player.x){
	image_xscale=-1;
}
else{
	image_xscale=1;
}