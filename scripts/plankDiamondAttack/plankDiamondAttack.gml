var hitEnemiesNow = ds_list_create();
var hits = instance_place_list(x,y,obj_diamond,hitEnemiesNow,false);

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