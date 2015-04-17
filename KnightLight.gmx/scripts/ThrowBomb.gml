///Throw Bomb
var player = argument0;
var bomb = argument1;
var controller = player -1;

if (canshoot[player] = true && menuselect[player] == 5) {
if((gamepad_button_check_pressed(controller,gp_shoulderr) || 
        gamepad_button_check_pressed(controller,gp_shoulderrb)))
    {
        instance_create(x,y,bomb);
    }
    if((gamepad_button_check_released(controller,gp_shoulderr) || 
        gamepad_button_check_released(controller,gp_shoulderrb)))
    {
        canshoot[player] = false;
        alarm[10] = room_speed * 0.7;
        image_index = 0;
    }
}