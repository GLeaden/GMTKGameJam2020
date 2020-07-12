/// @description Insert description here
// You can write your code in this editor
global.P_System = part_system_create_layer(layer, true);
global.dust_Particle = part_type_create();
global.bullet_casing_Particle = part_type_create();

// dust particle

part_type_sprite(global.dust_Particle, spr_dust, 0, 0, 1);

part_type_size(global.dust_Particle, 1, 1.5, 0.001, 0);

part_type_direction(global.dust_Particle, 0, 359, 0, 1);

part_type_speed(global.dust_Particle, 0.1, 0.2, -0.004, 0);

part_type_life(global.dust_Particle, 8, 16);

part_type_orientation(global.dust_Particle, 0, 359, 0.1, 1, 0);

part_type_alpha3(global.dust_Particle, 0.1, 0.2, 0.01);

// bullet casing

part_type_sprite(global.bullet_casing_Particle, spr_bullet_casing, 0, 0, 1);

part_type_size(global.bullet_casing_Particle, 1, 1.5, 0.001, 0);

part_type_direction(global.bullet_casing_Particle, 0, 359, 0, 1);

part_type_speed(global.bullet_casing_Particle, 0.1, 0.2, -0.004, 0);

part_type_life(global.bullet_casing_Particle, 50, 999);

part_type_orientation(global.bullet_casing_Particle, 0, 359, 0.1, 1, 0);

part_type_alpha1(global.bullet_casing_Particle, 1);
