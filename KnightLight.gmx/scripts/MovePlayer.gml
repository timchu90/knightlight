///MovePlayer(int player, object reticle)
player = argument0;
reticle = argument1;
controller = player-1;

gamepad_set_axis_deadzone(controller,.15);
if((gamepad_axis_value(controller,gp_axislh) < 0.5 
    and gamepad_axis_value(controller,gp_axislv) < 0.5) 
    and (gamepad_axis_value(controller,gp_axislh) > -0.5 
    and gamepad_axis_value(controller,gp_axislv) > -0.5)){
    //DO NOTHING
}
else{
    direction = point_direction(0,0, 
    gamepad_axis_value(controller, gp_axislh), 
    gamepad_axis_value(controller, gp_axislv));
}

// If player is using a bow...
if(menuselect[player] == 3){
    if(ischarging[player]) {
        // move slower while charging
        if(abs(hspeed) <= abs(chargemove * gamepad_axis_value(controller, gp_axislh)))
            hspeed += gamepad_axis_value(controller, gp_axislh)*0.5;
        else{
            hspeed = chargemove * gamepad_axis_value(controller, gp_axislh);
        }
        if(abs(vspeed) <= abs(chargemove * gamepad_axis_value(controller, gp_axislv))){
            vspeed += gamepad_axis_value(controller, gp_axislv)*0.5;
        }
        else{
            vspeed = chargemove * gamepad_axis_value(controller, gp_axislv);
        }
    }
    else {
        // faster than other weapons otherwise
        if(abs(hspeed) <= abs(archermove * gamepad_axis_value(controller, gp_axislh)))
            hspeed += gamepad_axis_value(controller, gp_axislh)*0.5;
        else{
            hspeed = archermove * gamepad_axis_value(controller, gp_axislh);
        }
        if(abs(vspeed) <= abs(archermove * gamepad_axis_value(controller, gp_axislv))){
            vspeed += gamepad_axis_value(controller, gp_axislv)*0.5;
        }
        else{
            vspeed = archermove * gamepad_axis_value(controller, gp_axislv);
        }
    }
}
else {  
        if(abs(hspeed) <= abs(basemove * gamepad_axis_value(controller, gp_axislh)))
            hspeed += gamepad_axis_value(controller, gp_axislh)*0.5;
        else{
            hspeed = basemove * gamepad_axis_value(controller, gp_axislh);
        }
        if(abs(vspeed) <= abs(basemove * gamepad_axis_value(controller, gp_axislv))){
            vspeed += gamepad_axis_value(controller, gp_axislv)*0.5;
        }
        else{
            vspeed = basemove * gamepad_axis_value(controller, gp_axislv);
        }
    
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