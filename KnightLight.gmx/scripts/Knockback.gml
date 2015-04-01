// Takes as arguments the player being knocked back, 
// the source of the hit, and the knockback, respectively.
victim = argument0;
source = argument1;
kb = argument2;

victim.direction = point_direction(source.x, source.y, victim.x, victim.y);
victim.speed = kb;
victim.friction = 0.5;
victim.alarm[4] = room_speed/4;

instance_create(victim.x,victim.y,obj_spark)

