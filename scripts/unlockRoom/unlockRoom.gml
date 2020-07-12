curCellX=(obj_player.x div 1028)
curCellY=(obj_player.y div 768)
var wallLay_id = layer_get_id("Wall");
var wallMap_id = layer_tilemap_get_id(wallLay_id);

global.roomLocked=false
global.roomSlotUsed=false

if(global.gridRooms[curCellX,curCellY].doorRight){
	doorSpawnX=((1024*curCellX)+(1024-32))
	doorSpawnY=((768*curCellY)+(11*32))
	with instance_position(doorSpawnX,doorSpawnY,obj_vDoor) instance_destroy();
	tilemap_set(wallMap_id,0,32+(32*curCellX),12+(24*curCellY))
	tilemap_set(wallMap_id,0,32+(32*curCellX),13+(24*curCellY))
	tilemap_set(wallMap_id,0,31+(32*curCellX),12+(24*curCellY))
	tilemap_set(wallMap_id,0,31+(32*curCellX),13+(24*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorBottom){
	doorSpawnX=((1024*curCellX)+(15*32))
	doorSpawnY=((768*curCellY)+(768-32))
	with instance_position(doorSpawnX,doorSpawnY,obj_hDoor) instance_destroy();
	tilemap_set(wallMap_id,0,15+(32*curCellX),23+(24*curCellY))
	tilemap_set(wallMap_id,0,16+(32*curCellX),23+(24*curCellY))
	tilemap_set(wallMap_id,0,15+(32*curCellX),24+(24*curCellY))
	tilemap_set(wallMap_id,0,16+(32*curCellX),24+(24*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorLeft){
	doorSpawnX=((1024*curCellX))
	doorSpawnY=((768*curCellY)+(11*32))
	with instance_position(doorSpawnX,doorSpawnY,obj_vDoor) instance_destroy();
	tilemap_set(wallMap_id,0,(32*curCellX),12+(24*curCellY))
	tilemap_set(wallMap_id,0,(32*curCellX),13+(24*curCellY))
	tilemap_set(wallMap_id,0,(32*curCellX)-1,12+(24*curCellY))
	tilemap_set(wallMap_id,0,(32*curCellX)-1,13+(24*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorTop){
	doorSpawnX=((1024*curCellX)+(15*32))
	doorSpawnY=((768*curCellY)+(32))
	with instance_position(doorSpawnX,doorSpawnY,obj_hDoor) instance_destroy();
	tilemap_set(wallMap_id,0,15+(32*curCellX),1+(24*curCellY))
	tilemap_set(wallMap_id,0,16+(32*curCellX),1+(24*curCellY))
	tilemap_set(wallMap_id,0,15+(32*curCellX),(24*curCellY))
	tilemap_set(wallMap_id,0,16+(32*curCellX),(24*curCellY))
}