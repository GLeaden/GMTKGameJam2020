/// @description Insert description here
// You can write your code in this editor
x = room_width/2
y = 0
srMinutes=0
srSeconds = global.srScore/1000000
while(srSeconds>=60){
	srMinutes++;
	srSeconds-=60
}
srSeconds = string_format(srSeconds,2,1)
srSeconds = string_replace(srSeconds," ","0")
srText = string(srMinutes)+":"+srSeconds
hsText = "Your time: "+srText