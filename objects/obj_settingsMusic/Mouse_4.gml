/// @description Insert description here
// You can write your code in this editor
if(sprite_index==spr_soundOn){
	sprite_index=spr_soundOff
}else{
	sprite_index=spr_soundOn
}
global.unmute=!global.unmute
audio_group_set_gain(audiogroup_music,global.unmute,0)
audio_group_set_gain(audiogroup_sound,global.unmute,0)
show_debug_message(string(global.unmute))