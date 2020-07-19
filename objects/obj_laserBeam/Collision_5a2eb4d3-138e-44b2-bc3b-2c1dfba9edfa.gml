/// @description Insert description here
// You can write your code in this editor
with(other){
	audio_play_sound(snd_hit,10,false)
	scrshake(true,other.damage/5)
	instance_destroy()
}