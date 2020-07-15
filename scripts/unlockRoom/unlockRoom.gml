curCellX=(obj_player.x div global.idealWidth)
curCellY=(obj_player.y div global.idealHeight)
var wallLay_id = layer_get_id("Wall");
var wallMap_id = layer_tilemap_get_id(wallLay_id);

global.roomLocked=false
global.roomSlotUsed=false
obj_player.roomsCleared++;

if(global.gridRooms[curCellX,curCellY].doorRight){
	doorSpawnX=((global.idealWidth*curCellX)+(global.idealWidth-32))
	doorSpawnY=((global.idealHeight*curCellY)+(11*32))
	with instance_position(doorSpawnX,doorSpawnY,obj_vDoor) instance_destroy();
	tilemap_set(wallMap_id,0,32+(32*curCellX),12+(24*curCellY))
	tilemap_set(wallMap_id,0,32+(32*curCellX),13+(24*curCellY))
	tilemap_set(wallMap_id,0,31+(32*curCellX),12+(24*curCellY))
	tilemap_set(wallMap_id,0,31+(32*curCellX),13+(24*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorBottom){
	doorSpawnX=((global.idealWidth*curCellX)+(15*32))
	doorSpawnY=((global.idealHeight*curCellY)+(global.idealHeight-32))
	with instance_position(doorSpawnX,doorSpawnY,obj_hDoor) instance_destroy();
	tilemap_set(wallMap_id,0,15+(32*curCellX),23+(24*curCellY))
	tilemap_set(wallMap_id,0,16+(32*curCellX),23+(24*curCellY))
	tilemap_set(wallMap_id,0,15+(32*curCellX),24+(24*curCellY))
	tilemap_set(wallMap_id,0,16+(32*curCellX),24+(24*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorLeft){
	doorSpawnX=((global.idealWidth*curCellX))
	doorSpawnY=((global.idealHeight*curCellY)+(11*32))
	with instance_position(doorSpawnX,doorSpawnY,obj_vDoor) instance_destroy();
	tilemap_set(wallMap_id,0,(32*curCellX),12+(24*curCellY))
	tilemap_set(wallMap_id,0,(32*curCellX),13+(24*curCellY))
	tilemap_set(wallMap_id,0,(32*curCellX)-1,12+(24*curCellY))
	tilemap_set(wallMap_id,0,(32*curCellX)-1,13+(24*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorTop){
	doorSpawnX=((global.idealWidth*curCellX)+(15*32))
	doorSpawnY=((global.idealHeight*curCellY)+(32))
	with instance_position(doorSpawnX,doorSpawnY,obj_hDoor) instance_destroy();
	tilemap_set(wallMap_id,0,15+(32*curCellX),1+(24*curCellY))
	tilemap_set(wallMap_id,0,16+(32*curCellX),1+(24*curCellY))
	tilemap_set(wallMap_id,0,15+(32*curCellX),(24*curCellY))
	tilemap_set(wallMap_id,0,16+(32*curCellX),(24*curCellY))
}