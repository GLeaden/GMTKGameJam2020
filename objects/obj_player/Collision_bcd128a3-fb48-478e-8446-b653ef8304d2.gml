/// @description Insert description here
// You can write your code in this editor
if(sprite_index!=spr_ladyRoll){
	if(!dead){
		audio_play_sound(snd_playerDeath,20,false);
		image_index=0;
		scr_freeze(deathFreeze);
	}
	dead = true;
	sprite_index = spr_die;
	image_speed = 1;
	speed=0
}