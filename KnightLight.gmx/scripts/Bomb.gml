///Bomb
var player = argument0;
var controller = player -1;

image_angle += charge[player]/4;

if (alarm[0] == -1) {
if((gamepad_button_check(controller,gp_shoulderr) || 
        gamepad_button_check(controller,gp_shoulderrb)))
    {
    ischarging[player] = true;
        if (charge[player] < maxcharge) {// if not fully chagred...
            charge[player] += 1;  
            }
            if (player == 1) {
x = obj_player1.x+lengthdir_x(25,obj_player1.image_angle-90);
y = obj_player1.y+lengthdir_y(25,obj_player1.image_angle-90);
            }
            else if (player == 2) {
            
x = obj_player2.x+lengthdir_x(25,obj_player2.image_angle-90);
y = obj_player2.y+lengthdir_y(25,obj_player2.image_angle-90);
            }
            else if (player == 3) {
x = obj_player3.x+lengthdir_x(25,obj_player3.image_angle-90);
y = obj_player3.y+lengthdir_y(25,obj_player3.image_angle-90);
            }
            else {
x = obj_player4.x+lengthdir_x(25,obj_player4.image_angle-90);
y = obj_player4.y+lengthdir_y(25,obj_player4.image_angle-90);
            }
    direction = obj_player1.image_angle-90;
}

if(alarm[0] == -1 && ((gamepad_button_check_released(controller,gp_shoulderr) || 
        gamepad_button_check_released(controller,gp_shoulderrb))))
    {
    audio_play_sound(Bow_Shot, 10, false);
        alarm[0] = room_speed*0.5;
       speed = bombspd * (1 + 2.5*charge[1]/maxcharge);
        ischarging[player] = false;
        charge[player] = 0;
}}

else if (collision_circle(x,y,17,obj_wall,false,true)){
instance_destroy();
}

else if (alarm[0] > room_speed*0.25){ 
    image_xscale += room_speed/2000;
    image_yscale += room_speed/2000;
}
else {
    image_xscale -= room_speed/2000;
    image_yscale -= room_speed/2000;
    }
