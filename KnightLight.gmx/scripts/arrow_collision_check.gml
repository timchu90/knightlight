///arrow_collision_check(player)
playernum = argument0;

if(playernum == 1){
    player = obj_player1;
}
if(playernum == 2){
    player = obj_player2;
}
if(playernum == 3){
    player = obj_player3;
}
if(playernum == 4){
    player = obj_player4;
}

if(alarm[2] == -1){
    alarm[2] = room_speed*1;
}

if(collision_line(x,y,
x + lengthdir_x(speed,direction), 
y + lengthdir_y(speed,direction),
player,
false,
false) && stuck == false){
    part_emitter_destroy(particles,emit);
    offset_len = point_distance(player.x,player.y,x,y,);
    offset_angle = image_angle-player.image_angle
    stuck = true;
    stuck_player = playernum;
    if (player.alarm[11] == -1) { // invincibility
        playerhp[playernum] = playerhp[playernum] - speed * arrowdmgmod;
        gamepad_set_vibration(playernum-1,0.5,0.5);
        player.alarm[playernum-1] = room_speed/2;
        
        // knockback
        Knockback(player, self, false);

        
        // audio
        PlayBowHit();
    }
}
if (stuck_player == playernum && (playerhp[playernum] > 0))
{
    direction = player.image_angle + offset_angle;
    image_angle = player.image_angle + offset_angle;
    x = player.x-lengthdir_x(offset_len,image_angle);
    y = player.y-lengthdir_y(offset_len,image_angle);
}
else if(stuck_player == playernum && playerhp[playernum] <=0){
    instance_destroy();
}
