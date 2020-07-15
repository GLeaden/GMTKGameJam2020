/// @description Insert description here
// You can write your code in this editor
if(!dead){
	audio_play_sound(snd_playerDeath,20,false);
	scr_freeze(deathFreeze);
}
dead = true;
sprite_index = spr_die;
image_speed = 1;