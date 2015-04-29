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


if(collision_line(x,y,
x + lengthdir_x(speed,direction), 
y + lengthdir_y(speed,direction),
player,
false,
false) && stuck == false){
    offset_len = point_distance(x,y,player.x,player.y);
    offset_angle = image_angle-player.image_angle
    stuck = true;
    
    if (player.alarm[11] == -1) { // invincibility
        playerhp[playernum] = playerhp[playernum] - speed * arrowdmgmod;
        gamepad_set_vibration(playernum-1,0.5,0.5);
        player.alarm[1] = room_speed/2;
        if(alarm[2] == -1){
            alarm[2] = room_speed*1;
        }
        
        // knockback
        Knockback(other, self, false);
        
        // audio
        PlayBowHit();
    }
}
if (stuck && playerhp[playernum] > 0)
{
    image_angle = player.image_angle + offset_angle;
    x = player.x-lengthdir_x(offset_len,image_angle);
    y = player.y-lengthdir_y(offset_len,image_angle);
}
else if(stuck && playerhp[playernum] <=0){
    instance_destroy();
}