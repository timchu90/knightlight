// Arguments: player that is hit, the weapon that connected,
// and the base knockback speed.
// Optional 4th argument - speed of the striking weapon.
victim = argument[0];
source = argument[1];
kb = argument[2];
hit_speed = 1;  // default hit speed multiplier set to 1
kb_mod = 0.1;   // modifies impact of weapon speed on knockback

if (argument_count > 3)
    if (argument[3] * kb_mod > 1)
        hit_speed = argument[3] * kb_mod;
    // else hit_speed remains 1, meaning kb == basekb

victim.direction = point_direction(source.x, source.y, victim.x, victim.y);
victim.speed = kb * hit_speed;
victim.friction = 0.5;
victim.alarm[4] = room_speed/6; // knockback immobility 
victim.alarm[11] = room_speed * 0.4; // invincibility


instance_create(victim.x,victim.y,obj_spark)
instance_create(x,y,eff_screenshake);
victim.image_index = 1;
