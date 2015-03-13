//NavigateMenu(int player)
player = argument0;
controller = player-1;
weapon_num = 3;

if(menuconfirm[player] = false){
    if(gamepad_button_check_pressed(controller,gp_padu)){
        menuselect[player] = menuselect[player] - 1;
    }
    if(gamepad_button_check_pressed(controller,gp_padd)){
        menuselect[player] = menuselect[player] + 1;
    }
    if(gamepad_button_check_pressed(controller,gp_face1)){
        menuconfirm[player] = true;
    }
}

if(menuselect[player] < 1){
    menuselect[player] = weapon_num;
}
if(menuselect[player] > weapon_num){
    menuselect[player] = 1;
}
