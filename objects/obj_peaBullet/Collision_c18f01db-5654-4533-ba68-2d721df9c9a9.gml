/// @description Insert description here
// You can write your code in this editor
with(other)
{
	hp -= other.damage;
	hit = 1;
	hitstun = 1;
	sprite_index = spr_cardHurt;
	knockback = other.direction;
}

instance_destroy();