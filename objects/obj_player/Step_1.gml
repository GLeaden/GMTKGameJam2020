/// @description wall collision fix
// You can write your code in this editor

while(tilePlaceMeeting(x,y,"Wall")){
	roomCentX=((x div global.idealWidth) * global.idealWidth+(global.idealWidth*.5))
	roomCentY=((y div global.idealHeight) * global.idealHeight+(global.idealHeight*.5))
	x = lerp(x,roomCentX,.01)
	y = lerp(y,roomCentY,.01)
}