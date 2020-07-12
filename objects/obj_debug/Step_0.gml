/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("R"))){
	room = title;
}
if (keyboard_check(ord("O"))){
	if(instance_exists(obj_player)){
		enemySpawn(irandom(3))
	}
}

if(keyboard_check_released(ord("L"))){
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_laserGun)
}

if(keyboard_check_released(ord("P"))){
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_xbow)
}


if (keyboard_check(ord("M"))){
	if(instance_exists(obj_player)){
		global.roomLocked=false;
	}
}