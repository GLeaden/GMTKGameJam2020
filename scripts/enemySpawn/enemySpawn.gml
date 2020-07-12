var randSpawn = returnSpawn()
var spawnX = randSpawn[0]
var spawnY = randSpawn[1]

//check if colliding with player/furniture/wall
if((!place_meeting(spawnX,spawnY,obj_player))&&
   (!place_meeting(spawnX,spawnY,obj_furniture))&&
   (!tilePlaceMeeting(spawnX,spawnY,"Wall"))){
   //no collisions, create enemy
   instance_create_layer(spawnX,spawnY,"Instances",obj_diamond)
}