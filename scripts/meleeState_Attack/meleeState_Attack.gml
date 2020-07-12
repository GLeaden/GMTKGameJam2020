/// @function plankState_Attack(melee)
/// @description plankState_Attack(melee)
/// @arg melee object_index
var _melee = argument0;
with(_melee){
	// Attack Start
	if(image_index == 0)
	{
		image_index = 1;
		ds_list_clear(hitEnemies);
	}

	// Attack Hitbox and Hits
	//mask_index = hitboxmask_index;
	var hitEnemiesNow = ds_list_create();

	var Enemies = ds_list_create();
	ds_list_add(Enemies, obj_heart);
	ds_list_add(Enemies, obj_spade);
	ds_list_add(Enemies, obj_diamond);
	ds_list_add(Enemies, obj_club);

	/*
	plankHeartAttack();
	plankDiamondAttack();
	plankSpadeAttack();
	plankClubAttack();

	var hit1 = instance_place_list(x,y,obj_heart,hitEnemiesNow,false);
	var hit2 = instance_place_list(x,y,obj_spade,hitEnemiesNow,false);
	var hit3 = instance_place_list(x,y,obj_club,hitEnemiesNow,false);
	var hit4 = instance_place_list(x,y,obj_diamond,hitEnemiesNow,false);

	hits = instance_place_list(x,y,Enemies,hitEnemiesNow,false);
	*/

	hits = 0;

	for (i = 0; i < ds_list_size(Enemies); i += 1){
	    hits += instance_place_list(x, y, Enemies[| i], hitEnemiesNow, false);
	}

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

	//mask_index = spr_plank;
	image_index++;

	if (endSwing(sprite_index,image_index,1))
	{
		mask_index = spr_plank;
		image_index = 0;
		obj_player.melee_state = SWINGSTATE.FREE;
	}
}
