playernum = argument0;
controller = playernum-1;
if(playernum == 1){
    player = obj_player1;
}
else if(playernum == 2){
    player = obj_player2;
}

else if(playernum == 3){
    player = obj_player3;
}

else if(playernum == 4){
    player = obj_player4;
}


x = player.x+lengthdir_x(40,player.image_angle-90);
y = player.y+lengthdir_y(40,player.image_angle-90);
image_angle = player.image_angle;
if(step < 120){
    surface_free(lightsurface);
    if(step%2 == 0){
        radius++;
    }
    light_init(radius,make_color_rgb(255,169,10),1);
    step++;
}
else{
    light_init(60,c_yellow,1);
    image_speed = 0;
}
if((gamepad_button_check_released(controller,gp_shoulderr) || 
        gamepad_button_check_released(controller,gp_shoulderrb)))
{
    instance_destroy();
}
