/// @description Insert description here
// You can write your code in this editor
dead = true;
sprite_index = spr_die;
image_speed = 1;
if(!died){
	audio_play_sound(snd_playerDeath,20,false);
	died = true;
}