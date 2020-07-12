/// @description Insert description here
// You can write your code in this editor
with(other)
{
	hp -= obj_peaBullet.damage;
	hit = 1;
	sprite_index = spr_cardHurt;
}

instance_destroy();