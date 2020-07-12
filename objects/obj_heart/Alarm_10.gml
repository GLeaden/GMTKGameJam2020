/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_heartF;
spd = choose(-3,3);

gunInst = instance_create_layer(x,y,"Instances",obj_enemyGun)
gunInst.ownedBy = id