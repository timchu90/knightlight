///MovePlayer(int player, object reticle)
player = argument0;
reticle = argument1;
controller = player-1;

gamepad_set_axis_deadzone(controller,.15);
direction = point_direction(0,0, 
    gamepad_axis_value(controller, gp_axislh), 
    gamepad_axis_value(controller, gp_axislv));

if(canshoot[player] == true){
    hspeed = gamepad_axis_value(controller, gp_axislh) * basemove;
    vspeed = gamepad_axis_value(controller, gp_axislv) * basemove;
}
else{
    hspeed = gamepad_axis_value(controller, gp_axislh) * reloadmove;
    vspeed = gamepad_axis_value(controller, gp_axislv) * reloadmove;
}

if((gamepad_axis_value(controller,gp_axisrh) < 0.5 
    and gamepad_axis_value(controller,gp_axisrv) < 0.5) 
    and (gamepad_axis_value(controller,gp_axisrh) > -0.5 
    and gamepad_axis_value(controller,gp_axisrv) > -0.5)){
    image_angle = point_direction(0,0, 
        gamepad_axis_value(controller, gp_axislh), 
        gamepad_axis_value(controller, gp_axislv))+90;
}
else{
    reticle.x = x+lengthdir_x(175,image_angle-90);
    reticle.y = y+lengthdir_y(175,image_angle-90);
    image_angle = point_direction(0,0, 
        gamepad_axis_value(controller, gp_axisrh), 
        gamepad_axis_value(controller, gp_axisrv))+90;
}

if(gamepad_button_check_pressed(controller,gp_shoulderl)
    || gamepad_button_check_pressed(controller,gp_shoulderlb)){
    flashon[player] = !flashon[player];
}
