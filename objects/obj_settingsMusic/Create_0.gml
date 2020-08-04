/// @description Insert description here
// You can write your code in this editor
if(global.unmute==undefined)global.unmute = true
if(audio_sound_get_gain(snd_title)<=0){
	global.unmute = false
	sprite_index = spr_soundOff
}