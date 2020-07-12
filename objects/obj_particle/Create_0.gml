/// @description Insert description here
// You can write your code in this editor
global.P_System = part_system_create_layer(layer, true);
global.dust_Particle = part_type_create();
global.bullet_casing_Particle = part_type_create();
global.dash_Particle = part_type_create();
global.particle_system_Emitter = part_emitter_create(global.P_System);
global.laser_Particle = part_type_create();
part_system_depth(global.P_System, 250)
//global.laser_Emitter = part_emitter_create(global.P_System);

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

// dash

part_type_sprite(global.dash_Particle, spr_dash_cloud, 0, 0, 1);

part_type_size(global.dash_Particle, 1, 1.5, 0.001, 0);

part_type_direction(global.dash_Particle, 0, 359, 0, 1);

part_type_speed(global.dash_Particle, 0.1, 0.2, -0.004, 0);

part_type_life(global.dash_Particle, 50, 60);

part_type_orientation(global.dash_Particle, 0, 359, 0.1, 1, 0);

part_type_alpha3(global.dash_Particle, 0.2, 0.4, 0.1);

// laser emitter
part_type_shape(global.laser_Particle,pt_shape_flare);
part_type_size(global.laser_Particle,0.25,0.5,0,0.15);
//part_type_scale(particle1,1,1);
part_type_color_rgb(global.laser_Particle,69,186,174,202,249,255);
part_type_alpha1(global.laser_Particle,.8);
part_type_speed(global.laser_Particle,10,10,0,1);
//part_type_gravity(particle1,1,270);
//part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(global.laser_Particle,true);
//part_type_life(particle1,60,60);

