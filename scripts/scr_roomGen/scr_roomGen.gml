//room generation by ya boi ian

//define mapgrid to all 0s
for(var i=0;i<4;i++){
  for(var j=0;j<4;j++){
    mapGridPath[i,j]="X"
	mapGridRooms[i,j]=instance_create_layer(0,0,"instances",obj_rmCell)
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
