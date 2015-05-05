sparkle = part_type_create();
part_type_shape(sparkle,pt_shape_line);
part_type_direction(sparkle,0,360,0,0);
part_type_colour1(sparkle,c_gray);
part_type_life(sparkle,room_speed*.15,room_speed*.2);
part_type_speed(sparkle,0,0,0,0);
part_type_alpha1(sparkle,.1);
part_type_scale(particles,1/8,8);
part_type_orientation(sparkle,90,90,0,0,true);

emit = part_emitter_create(particles);
part_emitter_stream(particles,emit,sparkle,100);
