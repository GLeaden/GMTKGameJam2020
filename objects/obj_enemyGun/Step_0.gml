/// @description Insert description here
// You can write your code in this editor

if(ownedBy.hp==0){
	instance_destroy()
}
x = lerp(x,ownedBy.x+8,.5)
y = lerp(y,ownedBy.y,.5)

image_angle = point_direction(x,y,lerp(x,obj_player.x,.5), lerp(y,obj_player.y,.5));
  if (obj_player.x < x){
	image_yscale=-1;
  }
  else{
	  image_yscale=1;
  }
  
//fire
if(cooldown == 0){
		enemyFire(id)
		cooldown=fire_rate;
	}


if (cooldown > 0) cooldown = cooldown - 1;