/// @description Insert description here
// You can write your code in this editor
image_index = 1;

if(tilePlaceMeeting(x+bullet_speed,y+bullet_speed,"Wall")){
	image_index = 3
}
if(tilePlaceMeeting(x,y,"Wall")&&collisionTimer<=0){
	instance_destroy()
}
