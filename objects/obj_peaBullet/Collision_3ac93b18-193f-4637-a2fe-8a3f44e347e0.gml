/// @description Insert description here
// You can write your code in this editor
with(other)
{
	if(hp>0){
		hp -= other.damage;
		hit = 1;
		hitstun = 1;
		sprite_index = spr_cardHurt;
		knockback = other.direction;
		audio_play_sound(snd_hit,10,false)
		scrshake(true,other.damage/5)
		if(obj_camera.scrShakeCooldown<other.damage*25)obj_camera.scrShakeCooldown=other.damage*25
		scr_freeze(other.freeze)
	}
}

instance_destroy();