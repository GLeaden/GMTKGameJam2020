/// @description Insert description here
// You can write your code in this editor
with(other)
{
	hp -= obj_laserBeam.damage;
	hit = 1;
	sprite_index = spr_cardHurt;
	//audio_play_sound(snd_hit,10,false)
	scrshake(true,other.damage/5)
	scr_freeze(obj_laserBeam.freeze)
}