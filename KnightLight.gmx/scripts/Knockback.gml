// Arguments: player that is hit, the weapon that connected,
// and boolean if speed of the striking weapon should effect knockback.
victim = argument[0];
source = argument[1];
using_speed = argument[2];
kb_mod = 1;         // default knockback modifier
speed_mod = 0.09;   // modifies impact of weapon speed on knockback

victim.direction = point_direction(source.x, source.y, victim.x, victim.y);

if (using_speed){
    if (source.speed * speed_mod > 1){
        // only using speed of hit if it results in knockback
        // greater than the basekb.
        kb_mod = source.speed * speed_mod;
        instance_create(x,y,eff_screenshake);
        instance_create(victim.x,victim.y,obj_spark);
        flash = instance_create(victim.x,victim.y,obj_damage_flash).id;
        flash.image_angle = victim.direction-90;
        audio_play_sound(Big_Hit,10,false);
        Sleep(125);
    }
    // else kb_mod remains 1 - meaning basekb is used
}


victim.speed = basekb * kb_mod;
victim.friction = 0.5;
victim.alarm[4] = room_speed/6; // knockback immobility 
victim.alarm[11] = room_speed * 0.4; // invincibility

instance_create(victim.x,victim.y,obj_littlespark);
instance_create(x,y,eff_screenshake_small);
victim.image_index = 1;
Sleep(50);
