/// @description Insert description here
// You can write your code in this editor
audio_group_load(audiogroup_music)
audio_group_load(audiogroup_sound)
randomize();
global.unmute=true
idealRes();
window_set_cursor(cr_none);
cursor_sprite = spr_crosshairChip;
if(audio_group_is_loaded(audiogroup_music)) bg_music=audio_play_sound(snd_title,1,true);