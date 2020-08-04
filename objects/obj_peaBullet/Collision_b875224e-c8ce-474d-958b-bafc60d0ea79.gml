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
		dmgTxt = instance_create_layer(x,y-16,"guiLayer",obj_damageText)
		dmgTxt.str = other.damage
	}
}

instance_destroy();