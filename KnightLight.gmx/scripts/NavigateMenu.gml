//NavigateMenu(int player)
player = argument0;
controller = player-1;
weapon_num = 5;
currentLAxisState = gamepad_axis_value(controller, gp_axislv);
currentRAxisState = gamepad_axis_value(controller, gp_axisrv);

if (menuconfirm[player] == false && menustart[player] == false)
{
    if (gamepad_button_check_pressed(controller,gp_start)){
        menustart[player] = true;
    }
}
else if(menuconfirm[player] == false && menustart[player] == true){
    if ((currentLAxisState > 0.5 && obj_menubase.alarm[1] < 1)
        || (currentRAxisState > 0.5 && obj_menubase.alarm[1] < 1)
        || gamepad_button_check_pressed(controller,gp_padd)){
        menuselect[player] = menuselect[player] + 1;
        obj_menubase.alarm[1] = room_speed / 3;
    }
    else if ((currentLAxisState < -0.5 && obj_menubase.alarm[2] < 1)
        || (currentRAxisState < -0.5 && obj_menubase.alarm[2] < 1)
        || gamepad_button_check_pressed(controller,gp_padu)){
        menuselect[player] = menuselect[player] - 1;
        obj_menubase.alarm[2] = room_speed / 3;
    }
    else if (gamepad_button_check_pressed(controller,gp_face1)
        || gamepad_button_check_pressed(controller,gp_shoulderr)
        || gamepad_button_check_pressed(controller,gp_shoulderrb)){
        menuconfirm[player] = true;
    }
    else if (gamepad_button_check_pressed(controller,gp_start))
    {
        menustart[player] = false;
    }
}
else if (menuconfirm[player] == true && menustart[player] == true)
{
    if (gamepad_button_check_pressed(controller,gp_face2)
        || gamepad_button_check_pressed(controller,gp_shoulderl)
        || gamepad_button_check_pressed(controller,gp_shoulderlb))
    {
        menuconfirm[player] = false;
    }
    else if (gamepad_button_check_pressed(controller,gp_start)
        || keyboard_check_pressed(vk_anykey))
    {
        var numOfActivePlayers = 0;
        var numOfConfirmedPlayers = 0;
        for (var i = 0; i < 4; i++)
        {
            if (menustart[i])
                numOfActivePlayers++;
            if (menuconfirm[i])
                numOfConfirmedPlayers++;
        }
        if (numOfActivePlayers == numOfConfirmedPlayers
            && numOfActivePlayers > 1)
            room_goto_next();
    }
}

if (menuselect[player] < 1){
    menuselect[player] = weapon_num;
}
if (menuselect[player] > weapon_num){
    menuselect[player] = 1;
}