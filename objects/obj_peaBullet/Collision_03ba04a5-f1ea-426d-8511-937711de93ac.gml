/// @description Insert description here
// You can write your code in this editor
with(other)
{
	hp -= other.damage;
	hit = 1;
	hitstun = 1;
	sprite_index = spr_cardHurt;
	knockback = other.direction;
	audio_play_sound(snd_hit,10,false)
	scrshake(true,other.damage/5)
	scr_freeze(other.freeze)
}

instance_destroy();