/// @description Insert description here
// You can write your code in this editor
with(other)
{
	if(hp>0){
		hp -= obj_laserBeam.damage;
		hit = 1;
		sprite_index = spr_cardHurt;
		//audio_play_sound(snd_hit,10,false)
		scrshake(true,other.damage/5)
		if(obj_camera.scrShakeCooldown<other.damage*25)obj_camera.scrShakeCooldown=other.damage*25
		scr_freeze(obj_laserBeam.freeze)
		if(other.dmgCnt>=4){
		dmgTxt = instance_create_layer(x,y-16,"guiLayer",obj_damageText)
		dmgTxt.str = other.damage*5
		other.dmgCnt=0
		}else{
			other.dmgCnt++
		}
		if(random_range(0,10)<=1||hp<=0)audio_play_sound(snd_hit,10,false)
	}
}