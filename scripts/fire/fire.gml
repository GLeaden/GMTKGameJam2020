/// @function fire(gun)
/// @description fire(gun)
/// @arg gun object_index
var _gun = argument0;

laser = _gun.object_index == obj_laserGun

if (!laser) {
	audio_play_sound(_gun.gunshot, 10 , false);
	scrshake(true, 0.5);
}


if (_gun.object_index == obj_shotgun){
	for (i = 0; i < 5; i += 1){
		var projectile = instance_create_layer(_gun.x, _gun.y, "BulletLayer", _gun.bullet);
		with (projectile){
			destX = mouse_x + random_range(_gun.bullet_spread*-1, _gun.bullet_spread)
			destY = mouse_y + random_range(_gun.bullet_spread*-1, _gun.bullet_spread)
			direction = point_direction(x, y, destX, destY);
			image_angle = direction;
			// bullet casing effect
	        part_particles_create(global.P_System, x, y, global.bullet_casing_Particle, 1);
		}
	}
}
else{
	var projectile = instance_create_layer(_gun.x, _gun.y, "BulletLayer", _gun.bullet);
	if (laser){
		obj_player.hMove = 0;
		obj_player.vMove = 0;
		with(projectile) {
			//global.laser_Emitter = part_emitter_create(global.P_System);
			part_particles_create(global.P_System, x, y, global.bullet_casing_Particle, 5);
			//part_emitter_region(global.P_System, global.laser_Emitter, x - 5, x + 5, y - 2, y + 2, ps_shape_line, ps_distr_invgaussian);
			//part_emitter_stream(global.P_System, global.laser_Emitter, global.bullet_casing_Particle, 5);
		}
		
	}
	else{
		with (projectile){
			destX = mouse_x + random_range(_gun.bullet_spread*-1, _gun.bullet_spread)
			destY = mouse_y + random_range(_gun.bullet_spread*-1, _gun.bullet_spread)
			direction = point_direction(x, y, destX, destY);
			image_angle = direction;
			// bullet casing effect
	        part_particles_create(global.P_System, x, y, global.bullet_casing_Particle, 1);

		}
	}
}


return;