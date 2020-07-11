/// @description Insert description here
// You can write your code in this editor
//Move in four directions when pressing arrow keys.
//spd = 3;

right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
up = keyboard_check(ord("W"));
dashing = keyboard_check(vk_space);

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
	dashcd = dashrate;
}


//collision_line(x, y, x+hMove, y+vMove, obj_testWall, false, false)



// collision checking
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

// fire weapon
if(mouse_check_button(mb_left)){
	if(cooldown == 0){
		if (projectile_weapon != pointer_null){
			if (projectile_weapon.object_index == obj_shotgun){
				fire(projectile_weapon);
				fire(projectile_weapon);
				fire(projectile_weapon);
				fire(projectile_weapon);
				fire(projectile_weapon);
			}
			else{
				fire(projectile_weapon);
			}
			cooldown = projectile_weapon.fire_rate;
		}
	}
}


// dash collision (done right before movement cause it messes with it)
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
}

// movement
x += hMove;
y += vMove;

// cooldown management
if (dashcd > 0) dashcd = dashcd - 1;
if (cooldown > 0) cooldown = cooldown - 1;



// aesthetics
if (mouse_x < obj_player.x){
	image_xscale=-1;
}
else{
	image_xscale=1;
}
if (mouse_y < obj_player.y-128){
	sprite_index = spr_ladyback;
}
else{
	sprite_index = spr_lady;
}