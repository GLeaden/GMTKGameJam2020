/// @description Insert description here
// You can write your code in this editor
dmg = damage;
with(other)
{
	hp -= other.dmg;
	hit = 1;
	sprite_index = spr_cardHurt;
}