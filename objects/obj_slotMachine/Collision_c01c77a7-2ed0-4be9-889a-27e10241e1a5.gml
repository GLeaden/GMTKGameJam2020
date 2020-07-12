/// @description Insert description here
// You can write your code in this editor
if (spun == false){
	spun = true;
	instance_create_layer(x, y+64, "Instances", guns[irandom(4)]);
	instance_create_layer(x+32, y+64, "Instances", cqc[irandom(1)]);
}
