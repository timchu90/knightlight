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
        Sleep(25);//previously 125
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
var hit = part_type_create();
part_type_shape(hit,pt_shape_pixel);
part_type_direction(hit,(victim.direction-30)-180,(victim.direction+30)-180,0,0);
part_type_size(hit,.2*source.speed,.2*source.speed,-.1,.01);
part_type_life(hit,room_speed*.25,room_speed*.3);
part_type_speed(hit,5,5,0,0);
var emit = part_emitter_create(particles);
part_emitter_region(particles,emit,victim.x-5,victim.x+5,victim.y-5,victim.y+5,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_burst(particles,emit,hit,50);
Sleep(50);
