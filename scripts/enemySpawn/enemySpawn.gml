var randSpawn = returnSpawn()
var spawnX = randSpawn[0]
var spawnY = randSpawn[1]
var enemyTypeInt = argument0 //0 - diamond 1 - heart 2 - spade 3 - club
var enemyTypeObj

switch(enemyTypeInt){
	case 0:
		enemyTypeObj = obj_diamond
	break
	case 1:
		enemyTypeObj = obj_heart
	break
	case 2:
		enemyTypeObj = obj_spade
	break
	case 3:
		enemyTypeObj = obj_club
	break
	default:
	break
}

//check if colliding with player/furniture/wall
if((!place_meeting(spawnX,spawnY,obj_player))&&
   (!place_meeting(spawnX,spawnY,obj_furniture))&&
   (!tilePlaceMeeting(spawnX,spawnY,"Wall"))){
   //no collisions, create enemy
   instance_create_layer(spawnX,spawnY,"Instances",enemyTypeObj)
}