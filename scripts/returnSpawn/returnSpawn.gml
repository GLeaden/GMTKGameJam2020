xMax = global.idealWidth/global.tileSize
yMax = global.idealHeight/global.tileSize
randomize()

var result




var playCellX = obj_player.x div global.idealWidth
var playCellY = obj_player.y div global.idealHeight

do{
	var randX = irandom_range(2,xMax-6)
	var randY = irandom_range(4,yMax-4)
	resultX = (playCellX*global.idealWidth)+(randX*global.tileSize)
	resultY = (playCellY*global.idealHeight)+(randY*global.tileSize)
	nearest = instance_nearest(resultX,resultY,obj_card)
	if(nearest!=noone){
		nearestX=nearest.x
		nearestY=nearest.y
	}else{
		nearestX=obj_player.x
		nearestY=obj_player.y
	}
}until((point_distance(resultX,resultY,obj_player.x,obj_player.y)>global.tileSize*2)&&point_distance(resultX,resultY,nearestX,nearestY)>global.tileSize)

result[0]=resultX
result[1]=resultY

return result