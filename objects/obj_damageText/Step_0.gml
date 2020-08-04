/// @description Insert description here
// You can write your code in this editor
if(image_alpha>=0.01){
	image_alpha = lerp(image_alpha,0,.0125)
}else{
	instance_destroy()
}
y=lerp(y,startY-16,.25)