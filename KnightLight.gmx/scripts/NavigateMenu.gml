//NavigateMenu(int player)
player = argument0;
controller = player-1;
weapon_num = 3;

if (menuconfirm[player] == false && menustart[player] == false)
{
    if (gamepad_button_check_pressed(controller,gp_start)){
        menustart[player] = true;
    }
}
else if(menuconfirm[player] == false && menustart[player] == true){
    if (gamepad_button_check_pressed(controller,gp_padu)){
        menuselect[player] = menuselect[player] - 1;
    }
    if (gamepad_button_check_pressed(controller,gp_padd)){
        menuselect[player] = menuselect[player] + 1;
    }
    if (gamepad_button_check_pressed(controller,gp_face1)){
        menuconfirm[player] = true;
        
    }
    if (gamepad_button_check_pressed(controller,gp_start))
    {
        menustart[player] = false;
    }
}
else if (menuconfirm[player] == true && menustart[player] == true)
{
    if (gamepad_button_check_pressed(controller,gp_face2))
    {
        menuconfirm[player] = false;
    }
    else if (gamepad_button_check_pressed(controller,gp_start))
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
        if (numOfActivePlayers == numOfConfirmedPlayers)
            room_goto_next();
    }
}

if (menuselect[player] < 1){
    menuselect[player] = weapon_num;
}
if (menuselect[player] > weapon_num){
    menuselect[player] = 1;
}
