var _gun = argument0;

audio_play_sound(_gun.gunshot, 10 , false);
scrshake(true, _gun.shake);
var projectile = instance_create_layer(_gun.x, _gun.y, "BulletLayer", _gun.bullet);
with (projectile){
	destX = obj_player.x + random_range(_gun.bullet_spread*-1, _gun.bullet_spread)
	destY = obj_player.y + random_range(_gun.bullet_spread*-1, _gun.bullet_spread)
	direction = point_direction(x, y, destX, destY);
	image_angle = direction;
	// bullet casing effect
	part_particles_create(global.P_System, x, y, global.bullet_casing_Particle, 1);
}