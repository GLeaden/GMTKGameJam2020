// Attack Start
if(sprite_index != spr_plankSwingHB)
{
	sprite_index = spr_plankSwingHB;
	image_index = 0;
	ds_list_clear(hitEnemies);
}

// Attack Hitbox and Hits
mask_index = spr_plankSwingHB;
var hitEnemiesNow = ds_list_create();
/*
var Enemies = ds_list_create();
ds_list_add(Enemies, obj_heart);
ds_list_add(Enemies, obj_spade);
ds_list_add(Enemies, obj_diamond);
ds_list_add(Enemies, obj_club);
*/
var hit1 = instance_place_list(x,y,obj_heart,hitEnemiesNow,false);
var hit2 = instance_place_list(x,y,obj_spade,hitEnemiesNow,false);
var hit3 = instance_place_list(x,y,obj_club,hitEnemiesNow,false);
var hit4 = instance_place_list(x,y,obj_diamond,hitEnemiesNow,false);

hits = hit1 + hit2 + hit3 + hit4;

if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		// New Enemy
		var hitID = hitEnemiesNow[| i];
		if (ds_list_find_index(hitEnemies, hitID) == -1)
		{
			ds_list_add(hitEnemies, hitID);
			with (hitID) {
				hitID.hp -= 2
			}
		}
	}
}
ds_list_destroy(hitEnemiesNow);
mask_index = spr_plank;

if (endSwing())
{
	sprite_index = spr_plank;
	state = SWINGSTATE.FREE;
}