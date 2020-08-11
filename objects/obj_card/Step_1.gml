/// @description Insert description here
// You can write your code in this editor
while(tilePlaceMeeting(x,y,"Wall")&&hp>0){
	roomCentX=((x div global.idealWidth) * global.idealWidth+(global.idealWidth*.5))
	roomCentY=((y div global.idealHeight) * global.idealHeight+(global.idealHeight*.5))
	x = lerp(x,roomCentX,.0001)
	y = lerp(y,roomCentY,.0001)
}