/// @description Insert description here
// You can write your code in this editor
// player picks up gun
if (ownedByPlayer = false) audio_play_sound(snd_pickup, 10, false);
ownedByPlayer = true;
obj_player.projectile_weapon = id;