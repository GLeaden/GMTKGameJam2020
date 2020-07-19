/// @description Insert description here
// You can write your code in this editor
if(sound == false && spun == true && (image_index < 2 || image_index + 1 == image_number - 1)){
	image_index = 2;
}


if (slots_timer == 0 && sound == false && spun == true){
	audio_stop_sound(noise);
	audio_play_sound(snd_slotsEnd, 10, false);
	image_index = image_number - 1;
	instance_create_layer(x, y+64, "Instances", guns[irandom(4)]);
	instance_create_layer(x+32, y+64, "Instances", cqcs[irandom(3)]);
	sound = true;
	for(i = 0; i < 2 + irandom(4); i += 1){
		enemySpawn(irandom(3));
	}
}
else{
	if (sound == false && spun == true){
		slots_timer -= 1;
	}
	
}