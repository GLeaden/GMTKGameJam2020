/// @description Insert description here
// You can write your code in this editor
if(hp>0&&(sprite_index!=spr_cardBE&&sprite_index!=spr_diamondE)){
	if(spawnTime<=0){
		image_xscale=1

		while (speed > 0){
			speed = lerp(speed, 0, 0.5);
		}

		if hitstun > 0
		{
			hitstun -= 1;
			sprite_index = spr_cardHurt;
			direction = knockback;
			speed = 4
			if(tilePlaceMeeting(x+lengthdir_x(speed, direction),y+lengthdir_y(speed, direction),"Wall")){
				speed = 0;	
			}
		}
		else
		{
			if (sprite_index = spr_cardHurt) sprite_index = spr_diamondF;
			if (speed>0){	
				while(tilePlaceMeeting(x+lengthdir_x(speed, direction),y+lengthdir_y(speed, direction),"Wall")){
					speed=lerp(speed,0,.1)
				}

				while(place_meeting(x+lengthdir_x(speed, direction),y+lengthdir_y(speed, direction),obj_furniture)){
					speed=lerp(speed,0,.1)
				}
			}
	
			while(tilePlaceMeeting(x+hMove,y,"Wall")){
			hMove=lerp(hMove,0,.1)
			}
			while(tilePlaceMeeting(x,y+vMove,"Wall")){
				vMove=lerp(vMove,0,.1)
			}

			while(place_meeting(x+hMove,y,obj_furniture)){
				hMove=lerp(hMove,0,.1)
			}
			while(place_meeting(x,y+vMove,obj_furniture)){
				vMove=lerp(vMove,0,.1)
			}

			if(!tilePlaceMeeting(x+hMove,y+vMove,"Wall")){
				x += hMove;
				y += vMove;	
			}
		}
		depth=0
		if (gunInst != pointer_null) show_debug_message("gundepth set")
		if(obj_player.y<y-128){
			if(hMove!=0||vMove!=0){
				sprite_index=spr_cardBW
			}else{
				sprite_index=spr_cardB
			}
			if (gunInst != pointer_null) gunInst.depth = 100
		}else{
			if(hMove!=0||vMove!=0){
				sprite_index=spr_diamondW
			}else{
				sprite_index=spr_diamondF
			}
			if (gunInst != pointer_null) gunInst.depth = -100
		}
	}else{
		if(rotmode==1){
			image_xscale+=rotspd;
			if(image_xscale>=1){
				rotmode=-1
			}
		}
		if(rotmode==-1){
			image_xscale-=rotspd;
			if(image_xscale<=0){
				rotmode=1
				if(sprite_index==spr_cardB){
					sprite_index=spr_diamondF
				}else{
					sprite_index=spr_cardB
				}
			}
		}
		spawnTime--;
		if(spawnTime==0){
			vMove = choose(-1, 1, 2, -2);
			hMove = choose(-1, 1, 2, -2);

			gunInst = instance_create_layer(x,y,"Instances",obj_enemyGun)
			gunInst.ownedBy = id
		}
	}
}
if (hp <= 0&&(sprite_index!=spr_cardBE&&sprite_index!=spr_diamondE)){
	if(gunInst!=pointer_null)instance_destroy(instance_nearest(x, y, obj_enemyGun));
	gunInst=pointer_null
	speed=0
	image_index=1
	if(obj_player.y<y-128){
		sprite_index=spr_cardBE
	}else{
		sprite_index=spr_diamondE
	}
}