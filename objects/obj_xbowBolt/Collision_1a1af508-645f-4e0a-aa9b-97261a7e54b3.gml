/// @description Insert description here
// You can write your code in this editor
dmg = damage;
if(dmg!=0){
	with(other)
	{
		hp -= other.dmg;
		hit = 1;
		sprite_index = spr_cardHurt;
		scr_freeze(other.freeze)
	}	
}