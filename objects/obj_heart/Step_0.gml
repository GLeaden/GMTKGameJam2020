/// @description Insert description here
// You can write your code in this editor
if(spawnTime<=0){
	image_xscale=1
	if (hp <= 0)
	{
		gunInst=pointer_null
		instance_destroy();
	}

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
		if(sprite_index = spr_cardHurt) sprite_index = spr_heartF;
		if(go = 1)
		{
			vMove = spd;
			hMove = 0;
		}

		if(go = 2)
		{
			hMove = spd;
			vMove = 0;
		}
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
	if(obj_player.y<y-128){
		if(hMove!=0||vMove!=0){
			sprite_index=spr_cardBW
		}else{
			sprite_index=spr_cardB
		}
		if (gunInst != pointer_null) gunInst.depth = 100
	}else{
		if(hMove!=0||vMove!=0){
			sprite_index=spr_heartW
		}else{
			sprite_index=spr_heartF
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
				sprite_index=spr_heartF
			}else{
				sprite_index=spr_cardB
			}
		}
	}
	spawnTime--;
	if(spawnTime==0){
		spd = choose(-3,3);
		gunInst = instance_create_layer(x,y,"Instances",obj_enemyGun)
		gunInst.ownedBy = id
	}
}