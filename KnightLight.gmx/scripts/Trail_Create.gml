sparkle = part_type_create();
part_type_shape(sparkle,pt_shape_pixel);
part_type_direction(sparkle,0,360,0,0);
part_type_colour1(sparkle,c_gray);
part_type_life(sparkle,room_speed*.05,room_speed*.1);
part_type_speed(sparkle,0,0,0,0);
part_type_alpha1(sparkle,.1);
emit = part_emitter_create(particles);
part_emitter_stream(particles,emit,sparkle,25);
