curCellX=(obj_player.x div global.idealWidth)
curCellY=(obj_player.y div global.idealHeight)
var wallLay_id = layer_get_id("Wall");
var wallMap_id = layer_tilemap_get_id(wallLay_id);

global.roomLocked=false
global.roomSlotUsed=false
obj_player.roomsCleared++;
roomTileW = global.idealWidth/global.tileSize
roomTileH = global.idealHeight/global.tileSize


if(global.gridRooms[curCellX,curCellY].doorRight){
	doorSpawnX=((global.idealWidth*curCellX)+(global.idealWidth-global.tileSize))
	doorSpawnY=((global.idealHeight*curCellY)+((roomTileH/2-1)*global.tileSize))
	with instance_position(doorSpawnX,doorSpawnY,obj_vDoor) instance_destroy();
	tilemap_set(wallMap_id,0,(roomTileW)+((roomTileW)*curCellX),(roomTileH/2)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW)+((roomTileW)*curCellX),(roomTileH/2+1)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW-1)+((roomTileW)*curCellX),(roomTileH/2)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW-1)+((roomTileW)*curCellX),(roomTileH/2+1)+((roomTileH)*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorBottom){
	doorSpawnX=((global.idealWidth*curCellX)+((roomTileW/2-1)*global.tileSize))
	doorSpawnY=((global.idealHeight*curCellY)+(global.idealHeight-global.tileSize))
	with instance_position(doorSpawnX,doorSpawnY,obj_hDoor) instance_destroy();
	tilemap_set(wallMap_id,0,(roomTileW/2-1)+((roomTileW)*curCellX),(roomTileH-1)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW/2)+((roomTileW)*curCellX),(roomTileH-1)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW/2-1)+((roomTileW)*curCellX),(roomTileH)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW/2)+((roomTileW)*curCellX),(roomTileH)+((roomTileH)*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorLeft){
	doorSpawnX=((global.idealWidth*curCellX))
	doorSpawnY=((global.idealHeight*curCellY)+((roomTileH/2-1)*global.tileSize))
	with instance_position(doorSpawnX,doorSpawnY,obj_vDoor) instance_destroy();
	tilemap_set(wallMap_id,0,((roomTileW)*curCellX),(roomTileH/2)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,((roomTileW)*curCellX),(roomTileH/2+1)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,((roomTileW)*curCellX)-1,(roomTileH/2)+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,((roomTileW)*curCellX)-1,(roomTileH/2+1)+((roomTileH)*curCellY))
}
if(global.gridRooms[curCellX,curCellY].doorTop){
	doorSpawnX=((global.idealWidth*curCellX)+((roomTileW/2-1)*global.tileSize))
	doorSpawnY=((global.idealHeight*curCellY)+(global.tileSize))
	with instance_position(doorSpawnX,doorSpawnY,obj_hDoor) instance_destroy();
	tilemap_set(wallMap_id,0,(roomTileW/2-1)+((roomTileW)*curCellX),1+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW/2)+((roomTileW)*curCellX),1+((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW/2-1)+((roomTileW)*curCellX),((roomTileH)*curCellY))
	tilemap_set(wallMap_id,0,(roomTileW/2)+((roomTileW)*curCellX),((roomTileH)*curCellY))
}