/// @description Insert description here
// You can write your code in this editor
with(other){
	audio_play_sound(snd_hit,10,false)
	scrshake(true,other.damage/5)
	if(obj_camera.scrShakeCooldown<other.damage*25)obj_camera.scrShakeCooldown=other.damage*25
	instance_destroy()
}