var randX = irandom_range(2,30)
var randY = irandom_range(4,20)
var result

var playCellX = obj_player.x div 1024
var playCellY = obj_player.y div 768

result[0]=((playCellX*1024)+(randX*32))
result[1]=((playCellY*768)+(randY*32))

return result