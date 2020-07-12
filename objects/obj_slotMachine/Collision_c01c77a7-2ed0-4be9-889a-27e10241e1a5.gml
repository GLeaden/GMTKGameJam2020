/// @description Insert description here
// You can write your code in this editor
if (spun == false){
	noise = audio_play_sound(snd_slots, 10, true)
	image_index = 1
	spun = true;
	
	// remove weapons from player
	gun = obj_player.projectile_weapon;
	cqc = obj_player.melee_weapon;
	if (gun != pointer_null) instance_destroy(gun);
	if (cqc != pointer_null) instance_destroy(cqc);
	obj_player.projectile_weapon = pointer_null;
	obj_player.melee_weapon = pointer_null;
}
