/// @description Insert description here
// You can write your code in this editor
if(hp>0&&(sprite_index!=spr_cardBE&&sprite_index!=spr_spadeE)){
	if(spawnTime<=0){
		image_xscale=1

		if hitstun > 1
		{
			hitstun -= 1;
		}
		else
		{
			spd = 4;
			if (sprite_index = spr_cardHurt) sprite_index = spr_spadeF;
			if (obj_player.x div spd < x div spd)
					{
						hMove = -spd;
					}
					else
					{
						if(obj_player.x div spd > x div spd)
						{
							hMove = spd;
						}else
						{
							hMove = 0;
						}
					}

					if (obj_player.y div spd < y div spd)
					{
						vMove = -spd;
					}
					else
					{
						if(obj_player.y div spd > y div spd){
							vMove = spd;
						}else{
							vMove = 0;
						}
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
		if(obj_player.y<y-128){
			if(hMove!=0||vMove!=0){
				sprite_index=spr_cardBW
			}else{
				sprite_index=spr_cardB
			}
		}else{
			if(hMove!=0||vMove!=0){
				sprite_index=spr_spadeW
			}else{
				sprite_index=spr_spadeF
			}
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
					sprite_index=spr_spadeF
				}else{
					sprite_index=spr_cardB
				}
			}
		}
		spawnTime--;
	}
}
if (hp <= 0&&(sprite_index!=spr_cardBE&&sprite_index!=spr_spadeE)){
	image_index=1
	if(obj_player.y<y-128){
		sprite_index=spr_cardBE
	}else{
		sprite_index=spr_spadeE
	}
}