/// @description Insert description here
// You can write your code in this editor
if(global.roomLocked&&roomClear()&&global.roomSlotUsed&&framewait>0){
	framewait--
	if(framewait<=0){
		unlockRoom();
		framewait=60
	}
}