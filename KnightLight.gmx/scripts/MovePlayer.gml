///MovePlayer(int player, object reticle)
player = argument0;
reticle = argument1;
controller = player-1;

gamepad_set_axis_deadzone(controller,.15);
direction = point_direction(0,0, 
    gamepad_axis_value(controller, gp_axislh), 
    gamepad_axis_value(controller, gp_axislv));

// If player is using a bow...
if(menuselect[player] == 3 || menuselect[player] == 2 || menuselect[player] == 5){
    if(ischarging[player]) {
        // move slower while charging
        hspeed = gamepad_axis_value(controller, gp_axislh) * chargemove;
        vspeed = gamepad_axis_value(controller, gp_axislv) * chargemove;
    }
    else {
        // faster than other weapons otherwise
        hspeed = gamepad_axis_value(controller, gp_axislh) * archermove;
        vspeed = gamepad_axis_value(controller, gp_axislv) * archermove;
    }
}
else {
    // other weapon users move at base speed
    hspeed = gamepad_axis_value(controller, gp_axislh) * basemove;
    vspeed = gamepad_axis_value(controller, gp_axislv) * basemove;
}

if((gamepad_axis_value(controller,gp_axislh) < 0.5 
    and gamepad_axis_value(controller,gp_axislv) < 0.5) 
    and (gamepad_axis_value(controller,gp_axislh) > -0.5 
    and gamepad_axis_value(controller,gp_axislv) > -0.5)){
    //DO NOTHING
}
else{
    image_angle = point_direction(0,0, 
        gamepad_axis_value(controller, gp_axislh), 
        gamepad_axis_value(controller, gp_axislv))+90;
}

if((gamepad_axis_value(controller,gp_axisrh) < 0.5 
    and gamepad_axis_value(controller,gp_axisrv) < 0.5) 
    and (gamepad_axis_value(controller,gp_axisrh) > -0.5 
    and gamepad_axis_value(controller,gp_axisrv) > -0.5)){
    //DO NOTHING
}
else{
    image_angle = point_direction(0,0, 
        gamepad_axis_value(controller, gp_axisrh), 
        gamepad_axis_value(controller, gp_axisrv))+90;
    reticle.x = x+lengthdir_x(175,image_angle-90);
    reticle.y = y+lengthdir_y(175,image_angle-90);
}

if(gamepad_button_check_pressed(controller,gp_shoulderl)
    || gamepad_button_check_pressed(controller,gp_shoulderlb)){
    flashon[player] = !flashon[player];
}
