curCellX=(obj_player.x div 1028)
curCellY=(obj_player.y div 768)
var wallLay_id = layer_get_id("Wall");
var wallMap_id = layer_tilemap_get_id(wallLay_id);
global.roomSlotUsed=true
/*

___________________________________________
############################################################################################
FATAL ERROR in
action number 1
of  Step Eventobj_player
for object obj_slotMachine:

Push :: Execution Error - Variable Index [4,0] out of range [4,-1] - -5.gridPath(100031,128000)
 at gml_Script_lockRoom (line 54) -                      if(global.gridPath[curCellX+1,curCellY]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
############################################################################################
--------------------------------------------------------------------------------------------
stack frame is
gml_Script_lockRoom (line 54)
called from - gml_Object_obj_slotMachine_Collision_0c86a70e_9e5a_4468_ae63_8526f0c6f197 (line 15) -        lockRoom();

*/




if(global.roomLocked=false){
	global.roomLocked=true
	if(global.gridRooms[curCellX,curCellY].doorRight){
		if(curCellX<3){
			if(global.gridPath[curCellX+1,curCellY]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
				if(global.gridPath[curCellX+1,curCellY]=="S"||global.gridPath[curCellX,curCellY]=="F"){
					doorSpawnX=((1024*curCellX)+(1024-32))
					doorSpawnY=((768*curCellY)+(11*32))
					instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
					tilemap_set(wallMap_id,8,32+(32*curCellX),12+(24*curCellY))
					tilemap_set(wallMap_id,8,32+(32*curCellX),13+(24*curCellY))
					tilemap_set(wallMap_id,8,31+(32*curCellX),12+(24*curCellY))
					tilemap_set(wallMap_id,8,31+(32*curCellX),13+(24*curCellY))
				}else{
					if(global.gridPath[curCellX+1,curCellY]<global.gridPath[curCellX,curCellY]){
						doorSpawnX=((1024*curCellX)+(1024-32))
						doorSpawnY=((768*curCellY)+(11*32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
						tilemap_set(wallMap_id,8,32+(32*curCellX),12+(24*curCellY))
						tilemap_set(wallMap_id,8,32+(32*curCellX),13+(24*curCellY))
						tilemap_set(wallMap_id,8,31+(32*curCellX),12+(24*curCellY))
						tilemap_set(wallMap_id,8,31+(32*curCellX),13+(24*curCellY))
					}
				}
			}
		}
	}
	if(global.gridRooms[curCellX,curCellY].doorBottom){
		if(curCellY<3){
			if(global.gridPath[curCellX,curCellY+1]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
				if(global.gridPath[curCellX,curCellY+1]=="S"||global.gridPath[curCellX,curCellY]=="F"){
					doorSpawnX=((1024*curCellX)+(15*32))
					doorSpawnY=((768*curCellY)+(768-32))
					instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
					tilemap_set(wallMap_id,8,15+(32*curCellX),23+(24*curCellY))
					tilemap_set(wallMap_id,8,16+(32*curCellX),23+(24*curCellY))
					tilemap_set(wallMap_id,8,15+(32*curCellX),24+(24*curCellY))
					tilemap_set(wallMap_id,8,16+(32*curCellX),24+(24*curCellY))
				}else{
					if(global.gridPath[curCellX,curCellY+1]<global.gridPath[curCellX,curCellY]){
						doorSpawnX=((1024*curCellX)+(15*32))
						doorSpawnY=((768*curCellY)+(768-32))
						tilemap_set(wallMap_id,8,15+(32*curCellX),23+(24*curCellY))
						tilemap_set(wallMap_id,8,16+(32*curCellX),23+(24*curCellY))
						tilemap_set(wallMap_id,8,15+(32*curCellX),24+(24*curCellY))
						tilemap_set(wallMap_id,8,16+(32*curCellX),24+(24*curCellY))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
					}
				}
			}
		}
	}
	if(global.gridRooms[curCellX,curCellY].doorLeft){
		if(curCellX>0){
			if(global.gridPath[curCellX-1,curCellY]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
				if(global.gridPath[curCellX-1,curCellY]=="S"||global.gridPath[curCellX,curCellY]=="F"){
					doorSpawnX=((1024*curCellX))
					doorSpawnY=((768*curCellY)+(11*32))
					instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
					tilemap_set(wallMap_id,8,(32*curCellX),12+(24*curCellY))
					tilemap_set(wallMap_id,8,(32*curCellX),13+(24*curCellY))
					tilemap_set(wallMap_id,8,(32*curCellX)-1,12+(24*curCellY))
					tilemap_set(wallMap_id,8,(32*curCellX)-1,13+(24*curCellY))
				}else{
					if(global.gridPath[curCellX-1,curCellY]<global.gridPath[curCellX,curCellY]){
						doorSpawnX=((1024*curCellX))
						doorSpawnY=((768*curCellY)+(11*32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
						tilemap_set(wallMap_id,8,(32*curCellX),12+(24*curCellY))
						tilemap_set(wallMap_id,8,(32*curCellX),13+(24*curCellY))
						tilemap_set(wallMap_id,8,(32*curCellX)-1,12+(24*curCellY))
						tilemap_set(wallMap_id,8,(32*curCellX)-1,13+(24*curCellY))
					}
				}
			}
		}
	}
	if(global.gridRooms[curCellX,curCellY].doorTop){
		if(curCellY>0){
			if(global.gridPath[curCellX,curCellY-1]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
				if(global.gridPath[curCellX,curCellY-1]=="S"||global.gridPath[curCellX,curCellY]=="F"){
					doorSpawnX=((1024*curCellX)+(15*32))
					doorSpawnY=((768*curCellY)+(32))
					instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
					tilemap_set(wallMap_id,8,15+(32*curCellX),1+(24*curCellY))
					tilemap_set(wallMap_id,8,16+(32*curCellX),1+(24*curCellY))
					tilemap_set(wallMap_id,8,15+(32*curCellX),(24*curCellY))
					tilemap_set(wallMap_id,8,16+(32*curCellX),(24*curCellY))
				}else{
					if(global.gridPath[curCellX,curCellY-1]<global.gridPath[curCellX,curCellY]){
						doorSpawnX=((1024*curCellX)+(15*32))
						doorSpawnY=((768*curCellY)+(32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
						tilemap_set(wallMap_id,8,15+(32*curCellX),1+(24*curCellY))
						tilemap_set(wallMap_id,8,16+(32*curCellX),1+(24*curCellY))
						tilemap_set(wallMap_id,8,15+(32*curCellX),(24*curCellY))
						tilemap_set(wallMap_id,8,16+(32*curCellX),(24*curCellY))
					}
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
				if(global.gridPath[curCellX,curCellY+1]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
					if(global.gridPath[curCellX,curCellY+1]=="S"||global.gridPath[curCellX,curCellY]=="F"){
						doorSpawnX=((1024*curCellX)+(15*32))
						doorSpawnY=((768*curCellY)+(768-32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
					}else{
						if(global.gridPath[curCellX,curCellY+1]<global.gridPath[curCellX,curCellY]){
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
				if(global.gridPath[curCellX+1,curCellY]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
					if(global.gridPath[curCellX+1,curCellY]=="S"||global.gridPath[curCellX,curCellY]=="F"){
						doorSpawnX=((1024*curCellX)+32)
						doorSpawnY=((768*curCellY)+(12*32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
					}else{
						if(global.gridPath[curCellX+1,curCellY]<global.gridPath[curCellX,curCellY]){
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
			if(global.gridPath[curCellX,curCellY-1]!="F"&&global.gridPath[curCellX,curCellY]!="S"){
				if(global.gridPath[curCellX,curCellY-1]=="S"||global.gridPath[curCellX,curCellY]=="F"){
				doorSpawnX=((1024*curCellX)+(14*32))
				doorSpawnY=((768*curCellY)+(32))
				instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
				}else{
				if(global.gridPath[curCellX,curCellY-1]<global.gridPath[curCellX,curCellY]){
				doorSpawnX=((1024*curCellX)+(14*32))
				doorSpawnY=((768*curCellY)+(32))
				instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
				}
			}
		}
	}
}

*/