/// @description Insert description here
// You can write your code in this editor
image_xscale = bullet_size;
image_yscale = bullet_size;
speed = bullet_speed;
direction = obj_player.projectile_weapon.image_angle;
image_angle = direction;
if(instance_exists(obj_debug)) image_index=1;
image_speed = 0;
dmgCnt = 0