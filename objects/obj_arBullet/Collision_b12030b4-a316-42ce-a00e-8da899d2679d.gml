/// @description Insert description here
// You can write your code in this editor
with(other)
{
	hp -= obj_arBullet.damage;
	hit = 1;
	hitstun = 1;
	sprite_index = spr_cardHurt;
	knockback = other.direction;
}

instance_destroy();