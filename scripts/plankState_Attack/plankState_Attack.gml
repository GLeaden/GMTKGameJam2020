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
var Enemies = ds_list_create();
ds_list_add(Enemies, obj_heart);
ds_list_add(Enemies, obj_spade);
ds_list_add(Enemies, obj_diamond);
ds_list_add(Enemies, obj_club);
var hits = instance_place_list(x,y,Enemies,hitEnemiesNow,false);
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
				Enemies[| i].hp -= 2
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