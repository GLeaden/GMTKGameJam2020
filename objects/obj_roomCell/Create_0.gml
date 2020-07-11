/// @description Insert description here
// You can write your code in this editor
doorTop=false
doorRight=false
doorBottom=false
doorLeft=false
entered=false //if cell has been entered yet

rmType=0 //0 - Normal, 1 - Start, 2 - Finish



for(var i=0;i<32;i++){
	for(var j=0;j<20;j++){
		rmLayout[i,j]="X"
	}
}