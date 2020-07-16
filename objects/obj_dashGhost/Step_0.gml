/// @description Insert description here
// You can write your code in this editor
if(wait>0){
	wait--;
}else{
	sprite_index=obj_player.sprite_index
	x=lerp(x,obj_player.x,.5)
	y=lerp(y,obj_player.y,.5)
	image_alpha=lerp(image_alpha,1,.5)
}