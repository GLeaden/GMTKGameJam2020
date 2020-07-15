/// @description Insert description here
// You can write your code in this editor

//Creates camera starting at the middle of the room

camX=(global.idealWidth*(global.roomSq*.5))-(global.idealWidth*.5)
camY=(global.idealHeight*(global.roomSq*.5))-(global.idealHeight*.5)
view_camera[0] = camera_create_view(camX, camY, global.idealWidth, global.idealHeight, 0, -1, 5, 5, 0, 0);