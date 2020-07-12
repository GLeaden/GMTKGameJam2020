curCellX=(obj_player.x div 1028)
curCellY=(obj_player.y div 768)

var wallLay_id = layer_get_id("Wall");
var floorLay_id = layer_get_id("Floor");
var wallMap_id = layer_tilemap_get_id(wallLay_id);
var floorMap_id = layer_tilemap_get_id(floorLay_id);



if(global.gridRooms[curCellX,curCellY].doorRight){
	global.gridRooms[curCellX,curCellY].rmLayout[31,12]="O"
	global.gridRooms[curCellX,curCellY].rmLayout[31,13]="O"
	if(curCellX<3){
		if(global.gridPath[curCellX+1,curCellY]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
			if(global.gridPath[curCellX+1,curCellY]=="S"||global.gridPath[curCellX,curCellY]=="F"){
				doorSpawnX=((1024*curCellX)+(1024-32))
				doorSpawnY=((768*curCellY)+(11*32))
				instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
				tilemap_set(wallMap_id,8,31+(32*curCellX),12+(24*curCellY))
				tilemap_set(wallMap_id,8,31+(32*curCellX),13+(24*curCellY))
			}else{
				if(global.gridPath[curCellX+1,curCellY]<global.gridPath[curCellX,curCellY]){
					doorSpawnX=((1024*curCellX)+(1024-32))
					doorSpawnY=((768*curCellY)+(11*32))
					instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
					tilemap_set(wallMap_id,8,31+(32*curCellX),12+(24*curCellY))
					tilemap_set(wallMap_id,8,31+(32*curCellX),13+(24*curCellY))
				}
			}
		}
	}
}

//tilemap_set(floorMap_id,11,m+(32*i),n+(24*j))



/*
		if(global.gridRooms[curCellX,curCellY].doorBottom){
			global.gridRooms[curCellX,curCellY].rmLayout[15,23]="O"
			global.gridRooms[curCellX,curCellY].rmLayout[16,23]="O"
			if(curCellY<3){
				if(mapGridPath[curCellX,curCellY+1]!="F"&&mapGridPath[curCellX,curCellY]!="S"){
					if(mapGridPath[curCellX,curCellY+1]=="S"||mapGridPath[curCellX,curCellY]=="F"){
						doorSpawnX=((1024*curCellX)+(15*32))
						doorSpawnY=((768*curCellY)+(768-32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
					}else{
						if(mapGridPath[curCellX,curCellY+1]<mapGridPath[curCellX,curCellY]){
							doorSpawnX=((1024*curCellX)+(15*32))
							doorSpawnY=((768*curCellY)+(768-32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
						}
					}
				}
			}
		}
		if(global.gridRooms[curCellX,curCellY].doorLeft){
			global.gridRooms[curCellX,curCellY].rmLayout[0,12]="O"
			global.gridRooms[curCellX,curCellY].rmLayout[0,13]="O"
			if(curCellX>0){
				if(mapGridPath[curCellX+1,curCellY]!="F"&&mapGridPath[curCellX,curCellY]!="S"){
					if(mapGridPath[curCellX+1,curCellY]=="S"||mapGridPath[curCellX,curCellY]=="F"){
						doorSpawnX=((1024*curCellX)+32)
						doorSpawnY=((768*curCellY)+(12*32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
					}else{
						if(mapGridPath[curCellX+1,curCellY]<mapGridPath[curCellX,curCellY]){
							doorSpawnX=((1024*curCellX)+32)
							doorSpawnY=((768*curCellY)+(12*32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
						}
					}
				}
			}
		}
		if(global.gridRooms[curCellX,curCellY].doorTop){
		global.gridRooms[curCellX,curCellY].rmLayout[15,0]="O"
		global.gridRooms[curCellX,curCellY].rmLayout[16,0]="O"
		global.gridRooms[curCellX,curCellY].rmLayout[15,1]="O"
		global.gridRooms[curCellX,curCellY].rmLayout[16,1]="O"
		if(curCellY>0){
			if(mapGridPath[curCellX,curCellY-1]!="F"&&mapGridPath[curCellX,curCellY]!="S"){
				if(mapGridPath[curCellX,curCellY-1]=="S"||mapGridPath[curCellX,curCellY]=="F"){
				doorSpawnX=((1024*curCellX)+(14*32))
				doorSpawnY=((768*curCellY)+(32))
				instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
				}else{
				if(mapGridPath[curCellX,curCellY-1]<mapGridPath[curCellX,curCellY]){
				doorSpawnX=((1024*curCellX)+(14*32))
				doorSpawnY=((768*curCellY)+(32))
				instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
				}
			}
		}
	}
}

*/