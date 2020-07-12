//room generation by ya boi ian

//room layouts

var mapGridPath
var mapGridRooms
//randomize
randomize()

//define mapgrid to all 0s
for(var i=0;i<4;i++){
  for(var j=0;j<4;j++){
    mapGridPath[i,j]="X"
	mapGridRooms[i,j]=instance_create_layer(0,0,"instances",obj_roomCell)
  }
}

//choose starting position
startingPos = irandom(3)
mapGridPath[startingPos,0] = "S"
mapGridRooms[startingPos,0].rmType = 1 //set to starting

//set current
curX=startingPos
curY=0
roomsCreated=1 //rooms created on path
endFound=false

//pathfinding
do{
  //random sort order of directions
  dirOrder = ds_list_create()
  dirFound = false;
  ds_list_add(dirOrder,0,1,2,3)
  ds_list_shuffle(dirOrder)
  //check if direction empty (does not have X)
  while(ds_list_size(dirOrder)>0&&!dirFound){
	  show_debug_message(string(curX)+","+string(curY))
	switch(ds_list_find_value(dirOrder,0)){
		//0 right, 1 down, 2 left, 3 up
		case 0:
			show_debug_message("Testing right: "+(string(curX+1))+","+string(curY))
			if(curX+1<4){
				if(mapGridPath[curX+1,curY]=="X"){
					dirFound=true
					mapGridRooms[curX,curY].doorRight=true;
					mapGridRooms[curX+1,curY].doorLeft=true;
					mapGridPath[curX+1,curY]=roomsCreated
					curX++
				}
			}
		break
		case 1:
			show_debug_message("Testing down: "+string(curX)+","+string(curY+1))
			if(curY+1<4){
				if(mapGridPath[curX,curY+1]=="X"){
					dirFound=true
					mapGridRooms[curX,curY].doorBottom=true;
					mapGridRooms[curX,curY+1].doorTop=true;
					mapGridPath[curX,curY+1]=roomsCreated
					curY++
				}
			}
		break
		case 2:
			show_debug_message("Testing left: "+string(curX-1)+","+string(curY))
			if(curX-1>=0){
				if(mapGridPath[curX-1,curY]=="X"){
					dirFound=true
					mapGridRooms[curX,curY].doorLeft=true;
					mapGridRooms[curX-1,curY].doorRight=true;
					mapGridPath[curX-1,curY]=roomsCreated
					curX--
				}
			}
		break
		case 3:
			if(curY-1>=0){
				show_debug_message("Testing up: "+string(curX)+","+string(curY-1))
				if(mapGridPath[curX,curY-1]=="X"){
					dirFound=true
					mapGridRooms[curX,curY].doorTop=true;
					mapGridRooms[curX,curY-1].doorBottom=true;
					mapGridPath[curX,curY-1]=roomsCreated
					curY--
				}
			}
		break
	}
	show_debug_message("Find result: "+ string(dirFound))
	ds_list_delete(dirOrder,0)
  }
  //delete sort order
  ds_list_destroy(dirOrder)
  if(dirFound){
	  roomsCreated++
	  show_debug_message("Rooms found: "+string(roomsCreated))
	  if(roomsCreated==10){
		  mapGridRooms[curX,curY].rmType=2
		  mapGridPath[curX,curY]="F"
		  endFound=true
		  //debug
		  show_debug_message("Done")
			show_debug_message(string(mapGridPath[0,0])+string(mapGridPath[1,0])+string(mapGridPath[2,0])+string(mapGridPath[3,0]))
			show_debug_message(string(mapGridPath[0,1])+string(mapGridPath[1,1])+string(mapGridPath[2,1])+string(mapGridPath[3,1]))
			show_debug_message(string(mapGridPath[0,2])+string(mapGridPath[1,2])+string(mapGridPath[2,2])+string(mapGridPath[3,2]))
			show_debug_message(string(mapGridPath[0,3])+string(mapGridPath[1,3])+string(mapGridPath[2,3])+string(mapGridPath[3,3]))
	  }
  }else{
	  show_debug_message("Fuck")
      //shits fucked
	  //clear shit, restart
	  scr_roomGen()
	  exit
  }
}until(endFound)

var wallLay_id = layer_get_id("Wall");
var floorLay_id = layer_get_id("Floor");
var wallMap_id = layer_tilemap_get_id(wallLay_id);
var floorMap_id = layer_tilemap_get_id(floorLay_id);
//Go room by room, creating rooms.
for(var i=0;i<4;i++){
	for(var j=0;j<4;j++){
		rmColor=irandom(3)
		show_debug_message("Generating "+string(i)+","+string(j)+" Type "+string(mapGridPath[i,j]))
		switch(mapGridPath[i,j]){
			case "X":
			break
			case "S":
			  for(var k=1;k<31;k++){
				for(var l=2;l<23;l++){
					mapGridRooms[i,j].rmLayout[k,l]="O"
				}
			  }
			  playSpawnX=((1024*(i))+512)
			  instance_create_layer(playSpawnX,96,"Instances",obj_player)
			  instance_create_layer(playSpawnX,96+64,"Instances",obj_thomas)
			break
			case "F":
			  for(var k=1;k<31;k++){
				for(var l=2;l<23;l++){
					mapGridRooms[i,j].rmLayout[k,l]="O"
				}
			  }
			  chestSpawnX=(1024*i)+(1024/2)
			  chestSpawnY=(768*i)+(768/2)
			  instance_create_layer(chestSpawnX,chestSpawnY,"Instances",obj_chest)
			break
			default:
			  for(var k=1;k<31;k++){
				for(var l=2;l<23;l++){
					mapGridRooms[i,j].rmLayout[k,l]="O"
				}
			  }
			break
		}
		//open door paths
		if(mapGridRooms[i,j].doorRight){
			mapGridRooms[i,j].rmLayout[31,12]="O"
			mapGridRooms[i,j].rmLayout[31,13]="O"
			if(i<3){
				if(mapGridPath[i+1,j]!="F"&&mapGridPath[i,j]!="S"){
					if(mapGridPath[i+1,j]=="S"||mapGridPath[i,j]=="F"){
						if(mapGridPath[i,j]!="F"){
							slotSpawnX=((1024*(i))+(1024-96))
							slotSpawnY=((768*(j))+(11*32))
							instance_create_layer(slotSpawnX,slotSpawnY,"Instances",obj_slotMachine)
						}else{		
						}
					}else{
						if(mapGridPath[i+1,j]<mapGridPath[i,j]){
							slotSpawnX=((1024*(i))+(1024-96))
							slotSpawnY=((768*(j))+(11*32))
							instance_create_layer(slotSpawnX,slotSpawnY,"Instances",obj_slotMachine)
						}
					}
				}
				//door
				if(mapGridPath[i+1,j]!="S"&&mapGridPath[i,j]!="F"){
					if(mapGridPath[i+1,j]=="F"||mapGridPath[i,j]=="S"){
						if(mapGridPath[i+1,j]=="F"){
							doorSpawnX=((1024*i)+(1024-32))
							doorSpawnY=((768*j)+(11*32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
							tilemap_set(wallMap_id,8,32+(32*i),12+(24*j))
							tilemap_set(wallMap_id,8,32+(32*i),13+(24*j))
							tilemap_set(wallMap_id,8,31+(32*i),12+(24*j))
							tilemap_set(wallMap_id,8,31+(32*i),13+(24*j))
						}
					}else{
						if(mapGridPath[i+1,j]>mapGridPath[i,j]){
							doorSpawnX=((1024*i)+(1024-32))
							doorSpawnY=((768*j)+(11*32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
							tilemap_set(wallMap_id,8,32+(32*i),12+(24*j))
							tilemap_set(wallMap_id,8,32+(32*i),13+(24*j))
							tilemap_set(wallMap_id,8,31+(32*i),12+(24*j))
							tilemap_set(wallMap_id,8,31+(32*i),13+(24*j))
						}
					}
				}
			}
		}
		if(mapGridRooms[i,j].doorBottom){
			mapGridRooms[i,j].rmLayout[15,23]="O"
			mapGridRooms[i,j].rmLayout[16,23]="O"
			if(j<3){
				if(mapGridPath[i,j+1]!="F"&&mapGridPath[i,j]!="S"){
					if(mapGridPath[i,j+1]=="S"||mapGridPath[i,j]=="F"){
						if(mapGridPath[i,j]!="F"){
							slotSpawnX=((1024*(i))+(14*32))
							slotSpawnY=((768*(j))+(768-96))
							instance_create_layer(slotSpawnX,slotSpawnY,"Instances",obj_slotMachine)
						}else{		
						}
					}else{
						if(mapGridPath[i,j+1]<mapGridPath[i,j]){
							slotSpawnX=((1024*(i))+(14*32))
							slotSpawnY=((768*(j))+(768-96))
							instance_create_layer(slotSpawnX,slotSpawnY,"Instances",obj_slotMachine)
						}
					}
				}
				//door
				if(mapGridPath[i,j+1]!="S"&&mapGridPath[i,j]!="F"){
					if(mapGridPath[i,j+1]=="F"||mapGridPath[i,j]=="S"){
						if(mapGridPath[i,j+1]=="F"){
							doorSpawnX=((1024*i)+(15*32))
							doorSpawnY=((768*j)+(768-32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
							tilemap_set(wallMap_id,8,15+(32*i),23+(24*j))
							tilemap_set(wallMap_id,8,16+(32*i),23+(24*j))
							tilemap_set(wallMap_id,8,15+(32*i),24+(24*j))
							tilemap_set(wallMap_id,8,16+(32*i),24+(24*j))
						}
					}else{
						if(mapGridPath[i,j+1]>mapGridPath[i,j]){
							doorSpawnX=((1024*i)+(15*32))
							doorSpawnY=((768*j)+(768-32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
							tilemap_set(wallMap_id,8,15+(32*i),23+(24*j))
							tilemap_set(wallMap_id,8,16+(32*i),23+(24*j))
							tilemap_set(wallMap_id,8,15+(32*i),24+(24*j))
							tilemap_set(wallMap_id,8,16+(32*i),24+(24*j))
						}
					}
				}
			}
		}
		if(mapGridRooms[i,j].doorLeft){
			mapGridRooms[i,j].rmLayout[0,12]="O"
			mapGridRooms[i,j].rmLayout[0,13]="O"
			if(i>0){
				if(mapGridPath[i-1,j]!="F"&&mapGridPath[i,j]!="S"){
					if(mapGridPath[i-1,j]=="S"||mapGridPath[i,j]=="F"){
						if(mapGridPath[i,j]!="F"){
							slotSpawnX=((1024*(i))+64)
							slotSpawnY=((768*(j))+(11*32))
							instance_create_layer(slotSpawnX,slotSpawnY,"Instances",obj_slotMachine)
						}else{		
						}
					}else{
						if(mapGridPath[i-1,j]<mapGridPath[i,j]){
							slotSpawnX=((1024*(i))+64)
							slotSpawnY=((768*(j))+(11*32))
							instance_create_layer(slotSpawnX,slotSpawnY,"Instances",obj_slotMachine)
						}
					}
				}
			}
							//door
				if(mapGridPath[i-1,j]!="S"&&mapGridPath[i,j]!="F"){
					if(mapGridPath[i-1,j]=="F"||mapGridPath[i,j]=="S"){
						if(mapGridPath[i-1,j]=="F"){
							doorSpawnX=((1024*i))
							doorSpawnY=((768*j)+(11*32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
							tilemap_set(wallMap_id,8,(32*i),12+(24*j))
							tilemap_set(wallMap_id,8,(32*i),13+(24*j))
							tilemap_set(wallMap_id,8,(32*i)-1,12+(24*j))
							tilemap_set(wallMap_id,8,(32*i)-1,13+(24*j))
						}
					}else{
						if(mapGridPath[i-1,j]>mapGridPath[i,j]){
						doorSpawnX=((1024*i))
						doorSpawnY=((768*j)+(11*32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
						tilemap_set(wallMap_id,8,(32*i),12+(24*j))
						tilemap_set(wallMap_id,8,(32*i),13+(24*j))
						tilemap_set(wallMap_id,8,(32*i)-1,12+(24*j))
						tilemap_set(wallMap_id,8,(32*i)-1,13+(24*j))
						}
					}
				}
		}
		if(mapGridRooms[i,j].doorTop){
			mapGridRooms[i,j].rmLayout[15,0]="O"
			mapGridRooms[i,j].rmLayout[16,0]="O"
			mapGridRooms[i,j].rmLayout[15,1]="O"
			mapGridRooms[i,j].rmLayout[16,1]="O"
			if(j>0){
				if(mapGridPath[i,j-1]!="F"&&mapGridPath[i,j]!="S"){
					if(mapGridPath[i,j-1]=="S"||mapGridPath[i,j]=="F"){
						if(mapGridPath[i,j]!="F"){
							slotSpawnX=((1024*(i))+(14*32))
							slotSpawnY=((768*(j))+(96))
							instance_create_layer(slotSpawnX,slotSpawnY,"Instances",obj_slotMachine)
						}else{	
						}
					}else{
						if(mapGridPath[i,j-1]<mapGridPath[i,j]){
							slotSpawnX=((1024*(i))+(14*32))
							slotSpawnY=((768*(j))+(96))
							instance_create_layer(slotSpawnX,slotSpawnY,"Instances",obj_slotMachine)
						}
					}
				}
			}
										//door
				if(mapGridPath[i,j-1]!="S"&&mapGridPath[i,j]!="F"){
					if(mapGridPath[i,j-1]=="F"||mapGridPath[i,j]=="S"){
						if(mapGridPath[i,j-1]=="F"){
							doorSpawnX=((1024*i)+(15*32))
							doorSpawnY=((768*j)+(32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
							tilemap_set(wallMap_id,8,15+(32*i),1+(24*j))
							tilemap_set(wallMap_id,8,16+(32*i),1+(24*j))
							tilemap_set(wallMap_id,8,15+(32*i),(24*j))
							tilemap_set(wallMap_id,8,16+(32*i),(24*j))
						}
					}else{
						if(mapGridPath[i,j-1]>mapGridPath[i,j]){
							doorSpawnX=((1024*i)+(15*32))
							doorSpawnY=((768*j)+(32))
							instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
							tilemap_set(wallMap_id,8,15+(32*i),1+(24*j))
							tilemap_set(wallMap_id,8,16+(32*i),1+(24*j))
							tilemap_set(wallMap_id,8,15+(32*i),(24*j))
							tilemap_set(wallMap_id,8,16+(32*i),(24*j))
						}
					}
				}
		}
		//layout tiles
		for(var m=0;m<32;m++){
			for(var n=0;n<24;n++){
				switch(mapGridRooms[i,j].rmLayout[m,n]){
				case "O":
					switch(rmColor){
					case 0:
					  tilemap_set(floorMap_id,11,m+(32*i),n+(24*j))
					break
					case 1:
					  tilemap_set(floorMap_id,14,m+(32*i),n+(24*j))
					break
					case 2:
					  tilemap_set(floorMap_id,35,m+(32*i),n+(24*j))
					break
					case 3:
					  tilemap_set(floorMap_id,38,m+(32*i),n+(24*j))
					break
					}
				break
				default:
					if(n<23){
						if(mapGridRooms[i,j].rmLayout[m,n+1]=="O"){
							tilemap_set(wallMap_id,24,m+(32*i),n+(24*j))
						}else{
							tilemap_set(wallMap_id,8,m+(32*i),n+(24*j))
						}
					}else{
						tilemap_set(wallMap_id,8,m+(32*i),n+(24*j))
					}
				break
				}
				//tilemap_set()
			}
		}
	}
}
//add doors ahead
/*
if(global.gridRooms[i,j].doorRight){
		if(i<3){
			
		}
	}
	if(global.gridRooms[i,j].doorBottom){
		if(j<3){
			if(global.gridPath[i,j+1]=="F"&&global.gridPath[i,j]=="S"){
				if(global.gridPath[i,j+1]!="S"||global.gridPath[i,j]!="F"){
					doorSpawnX=((1024*i)+(15*32))
					doorSpawnY=((768*j)+(768-32))
					instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
					tilemap_set(wallMap_id,8,15+(32*i),23+(24*j))
					tilemap_set(wallMap_id,8,16+(32*i),23+(24*j))
					tilemap_set(wallMap_id,8,15+(32*i),24+(24*j))
					tilemap_set(wallMap_id,8,16+(32*i),24+(24*j))
				}else{
					if(global.gridPath[i,j+1]>global.gridPath[i,j]){
						doorSpawnX=((1024*i)+(15*32))
						doorSpawnY=((768*j)+(768-32))
						tilemap_set(wallMap_id,8,15+(32*i),23+(24*j))
						tilemap_set(wallMap_id,8,16+(32*i),23+(24*j))
						tilemap_set(wallMap_id,8,15+(32*i),24+(24*j))
						tilemap_set(wallMap_id,8,16+(32*i),24+(24*j))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
					}
				}
			}
		}
	}
	if(global.gridRooms[i,j].doorLeft){
		if(i>0){
			if(global.gridPath[i-1,j]=="F"&&global.gridPath[i,j]=="S"){
				if(global.gridPath[i-1,j]!="S"||global.gridPath[i,j]!="F"){
					doorSpawnX=((1024*i))
					doorSpawnY=((768*j)+(11*32))
					instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
					tilemap_set(wallMap_id,8,(32*i),12+(24*j))
					tilemap_set(wallMap_id,8,(32*i),13+(24*j))
					tilemap_set(wallMap_id,8,(32*i)-1,12+(24*j))
					tilemap_set(wallMap_id,8,(32*i)-1,13+(24*j))
				}else{
					if(global.gridPath[i-1,j]>global.gridPath[i,j]){
						doorSpawnX=((1024*i))
						doorSpawnY=((768*j)+(11*32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_vDoor)
						tilemap_set(wallMap_id,8,(32*i),12+(24*j))
						tilemap_set(wallMap_id,8,(32*i),13+(24*j))
						tilemap_set(wallMap_id,8,(32*i)-1,12+(24*j))
						tilemap_set(wallMap_id,8,(32*i)-1,13+(24*j))
					}
				}
			}
		}
	}
	if(global.gridRooms[i,j].doorTop){
		if(j>0){
			if(global.gridPath[i,j-1]=="F"&&global.gridPath[i,j]=="S"){
				if(global.gridPath[i,j-1]!="S"||global.gridPath[i,j]!="F"){
					doorSpawnX=((1024*i)+(15*32))
					doorSpawnY=((768*j)+(32))
					instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
					tilemap_set(wallMap_id,8,15+(32*i),1+(24*j))
					tilemap_set(wallMap_id,8,16+(32*i),1+(24*j))
					tilemap_set(wallMap_id,8,15+(32*i),(24*j))
					tilemap_set(wallMap_id,8,16+(32*i),(24*j))
				}else{
					if(global.gridPath[i,j-1]>global.gridPath[i,j]){
						doorSpawnX=((1024*i)+(15*32))
						doorSpawnY=((768*j)+(32))
						instance_create_layer(doorSpawnX,doorSpawnY,"Instances",obj_hDoor)
						tilemap_set(wallMap_id,8,15+(32*i),1+(24*j))
						tilemap_set(wallMap_id,8,16+(32*i),1+(24*j))
						tilemap_set(wallMap_id,8,15+(32*i),(24*j))
						tilemap_set(wallMap_id,8,16+(32*i),(24*j))
					}
				}
			}
		}
	}
*/



global.gridPath = mapGridPath
global.gridRooms = mapGridRooms