/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_diamondF;
spd = 2;

vMove = choose(-1, 1, 2, -2);
hMove = choose(-1, 1, 2, -2);

gunInst = instance_create_layer(x,y,"Instances",obj_enemyGun)
gunInst.ownedBy = id