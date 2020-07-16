/// @description Insert description here
// You can write your code in this editor
// Move in four directions when pressing arrow keys.
// spd = 3;
while (speed > 0){
	speed = lerp(speed, 0, 0.05);
}

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));
dashing = keyboard_check(vk_space);
dashed = false;

hMove = (right - left) * spd;
vMove = (down - up) * spd;

// dashing
if (dashing && dashcd == 0){
	if (left || right){
		hMove = hMove*24;
		vMove = vMove*12;
	}
	else{
		hMove = hMove*12;
		vMove = vMove*24;
	} 
	// dash particle
	part_particles_create(global.P_System, x, y, global.dash_Particle, 1);
	dashcd = dashrate;
	dashed = true;
	instance_create_layer(x,y,"Instances",obj_dashGhost)
}


// collision_line(x, y, x+hMove, y+vMove, obj_testWall, false, false)



// collision checking
/*
if(place_meeting(x + hMove, y, obj_testWall))
{
	while(!place_meeting(x + sign(hMove), y, obj_testWall))
	{
		x += sign(hMove);
	}
	hMove = 0;
}

if(place_meeting(x, y + vMove, obj_testWall))
{
	while(!place_meeting(x, y + sign(vMove), obj_testWall))
	{
		y += sign(vMove);
	}
	vMove = 0;
}
*/

// fire weapon
shot = pointer_null;
if (projectile_weapon != pointer_null && !dead){
	if (projectile_weapon.object_index = obj_pistol){
		if(mouse_check_button_pressed(mb_left)){
			fire(projectile_weapon);
		}
	}
	else if(mouse_check_button(mb_left)){
		if(cooldown == 0){
			shot = fire(projectile_weapon)
			if (projectile_weapon.object_index = obj_laserGun){
				// particle emitter stuff here 
				shotDir = projectile_weapon.image_angle;
				part_type_direction(global.laser_Particle,shotDir,shotDir,0,0);
				part_emitter_region(global.P_System,global.particle_system_Emitter,shot.x,shot.x,shot.y,shot.y,ps_shape_line,ps_distr_invgaussian);
				part_emitter_burst(global.P_System,global.particle_system_Emitter,global.laser_Particle,1+irandom(2))
			}
			cooldown = projectile_weapon.fire_rate;
			}
		}
}

//if (projectile_weapon)

if(melee_weapon != pointer_null &&!dead)
{
	
	switch (melee_state)
	{
		case SWINGSTATE.FREE:
			meleeState_Free(melee_weapon);
			break;
		case SWINGSTATE.ATTACK:
			meleeState_Attack(melee_weapon);
			break;
	}
}

keyAttack = mouse_check_button(mb_right);

if(melee_weapon != pointer_null && projectile_weapon != pointer_null){
	if (keyAttack){
		projectile_weapon.image_alpha = 0;
		melee_weapon.image_alpha = 1;
	}
	else{
		projectile_weapon.image_alpha = 1;
		melee_weapon.image_alpha = 0;
	}
}
/*
// swing melee
if(mouse_check_button(mb_right)){
	if(winddown == 0){
		if (melee_weapon != pointer_null){
			whack(melee_weapon);
		}
		winddown = melee_weapon.swing_rate;
	}
}
if (winddown > 0) winddown = winddown - 1
*/
// dash collision (done right before movement cause it messes with it)
/*
wall = collision_line(x, y, x+hMove, y+vMove, obj_testWall, false, false)
if (dashing && wall){
	dist = distance_to_object(wall) - 4
	if (wall.x < x){
		hMove = dist*-1;
	}
	else{
		hMove = dist;
	}
	if(wall.y < y){
		vMove = dist*-1;
	}
	else{
		vMove = dist;
	}
}*/
if (speed>0){	
	while(tilePlaceMeeting(x+lengthdir_x(speed, direction),y+lengthdir_y(speed, direction),"Wall")){
		speed--
	}

	while(place_meeting(x+lengthdir_x(speed, direction),y+lengthdir_y(speed, direction),obj_furniture)){
		speed--
	}
}


while(tilePlaceMeeting(x+hMove,y,"Wall")&&hMove!=0){
	hMove=lerp(hMove,0,.1)
}
while(tilePlaceMeeting(x,y+vMove,"Wall")&&vMove!=0){
	vMove=lerp(vMove,0,.1)
}

while(place_meeting(x+hMove,y,obj_furniture)){
	hMove=lerp(hMove,0,.1)
}
while(place_meeting(x,y+vMove,obj_furniture)){
	vMove=lerp(vMove,0,.1)
}

// movement
if(tilePlaceMeeting(x+lengthdir_x(speed, direction),y+lengthdir_y(speed, direction),"Wall")){
	speed = 0;	
}
if(!tilePlaceMeeting(x+hMove,y+vMove,"Wall")&&!dead){
	x += hMove;
	y += vMove;	
}

if (dashed) {
	part_particles_create(global.P_System, x, y, global.dash_Particle, 1);
}

// cooldown management
if (dashcd > 0) dashcd = dashcd - 1;
if (cooldown > 0) cooldown = cooldown - 1;


if(!dead)
{
	// aesthetics
	if (mouse_x < obj_player.x){
		image_xscale=-1;
	}
	else{
		image_xscale=1;
	}
	if (mouse_y < obj_player.y-128){
		sprite_index = spr_ladyback;
		if (projectile_weapon != pointer_null) projectile_weapon.depth = 100;
	}
	else{
		sprite_index = spr_lady;
		if (projectile_weapon != pointer_null) projectile_weapon.depth = -100;
	}

	// dust effect
	if ((right || left || up || down)){
		part_particles_create(global.P_System, x, y, global.dust_Particle, 4);
	}
}