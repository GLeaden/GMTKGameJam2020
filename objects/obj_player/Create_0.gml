/// @description Insert description here
// You can write your code in this editor
projectile_weapon = pointer_null;
melee_weapon = pointer_null;
spd = 3;
cooldown = 0 // fire rate cooldown


dashcd   = 0 // dash cooldown
dashrate = 120; // can dash every 120 frames (2sec)

melee_state = SWINGSTATE.FREE;
cursor_sprite = spr_crosshairChip;
window_set_cursor(cr_none);