/// @description Insert description here
// You can write your code in this editor
dmg = damage;
if(dmg!=0&&other.hp>0){
	with(other)
	{
		hp -= other.dmg;
		hit = 1;
		sprite_index = spr_cardHurt;
		audio_play_sound(snd_hit,10,false)
		scrshake(true,other.damage/5)
		if(obj_camera.scrShakeCooldown<other.damage)obj_camera.scrShakeCooldown=other.damage
		scr_freeze(other.freeze)
		dmgTxt = instance_create_layer(x,y-16,"guiLayer",obj_damageText)
		dmgTxt.str = other.damage
	}	
}