/// @description Insert description here
// You can write your code in this editor
projectile_weapon = pointer_null;
melee_weapon = pointer_null;
spd = 3;
cooldown = 0 // fire rate cooldown
roomsCleared = 0

depth = 0;
dashcd   = 0 // dash cooldown
dashrate = 120; // can dash every 120 frames (2sec)

melee_state = SWINGSTATE.FREE;
dead = false;
died = false;
image_speed = 0;

deathFreeze = 100