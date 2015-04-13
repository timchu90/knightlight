// Arguments: player that is hit, the weapon that connected,
// and boolean if speed of the striking weapon should effect knockback.
victim = argument[0];
source = argument[1];
using_speed = argument[2];
kb_mod = 1;         // default knockback modifier
speed_mod = 0.09;   // modifies impact of weapon speed on knockback

if (using_speed){
    if (source.speed * speed_mod > 1){
        // only using speed of hit if it results in knockback
        // greater than the basekb.
        kb_mod = source.speed * speed_mod;
        instance_create(x,y,eff_screenshake);
        instance_create(victim.x,victim.y,obj_spark);
    }
    // else kb_mod remains 1 - meaning basekb is used
}

victim.direction = point_direction(source.x, source.y, victim.x, victim.y);
victim.speed = basekb * kb_mod;
victim.friction = 0.5;
victim.alarm[4] = room_speed/6; // knockback immobility 
victim.alarm[11] = room_speed * 0.4; // invincibility


instance_create(victim.x,victim.y,obj_littlespark);
Sleep(50);
victim.image_index = 1;
