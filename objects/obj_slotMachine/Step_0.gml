/// @description Insert description here
// You can write your code in this editor
if (slots_timer == 0 && sound == false && spun == true){
	audio_stop_sound(noise);
	audio_play_sound(snd_slotsEnd, 10, false);
	instance_create_layer(x, y+64, "Instances", guns[irandom(4)]);
	instance_create_layer(x+32, y+64, "Instances", cqc[irandom(1)]);
	sound = true;
}
else{
	if (sound == false && spun == true){
		slots_timer -= 1;
	}
	
}