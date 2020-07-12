var xx = argument0
var yy = argument1
var layer_id = layer_tilemap_get_id(layer_get_id(argument2));

//check for collision
var meeting = tilemap_get_at_pixel(layer_id,xx,yy);
			  
return meeting