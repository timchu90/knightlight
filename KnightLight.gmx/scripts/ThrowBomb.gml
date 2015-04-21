///Throw Bomb
var player = argument0;
var bomb = argument1;
var controller = player -1;

if (canshoot[player] == true && menuselect[player] == 5 && playerhp[player] > 0) {
if((gamepad_button_check(controller,gp_shoulderr) || 
        gamepad_button_check(controller,gp_shoulderrb)))
    {
        instance_create(x+lengthdir_x(25,image_angle-90),y+lengthdir_y(25,image_angle-90),bomb);
        canshoot[player] = false;
    }
    if((gamepad_button_check_released(controller,gp_shoulderr) || 
        gamepad_button_check_released(controller,gp_shoulderrb)))
    {
        //alarm[10] = room_speed * 0.3;
        image_index = 0;
    }
}
