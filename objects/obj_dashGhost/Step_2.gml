/// @description Insert description here
// You can write your code in this editor
if(obj_player.dashcd<=0||
  (abs(obj_player.x-x)<=4&&abs(obj_player.y-y)<=4)
)instance_destroy();