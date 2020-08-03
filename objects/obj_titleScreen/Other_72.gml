/// @description Insert description here
// You can write your code in this editor
if(audio_group_is_loaded(audiogroup_music)&&!audio_is_playing(snd_title)){
	bg_music=audio_play_sound(snd_title,1,true);
	audio_sound_gain(bg_music, global.unmute,0);
	show_debug_message("Loaded audiogroup_music")
}