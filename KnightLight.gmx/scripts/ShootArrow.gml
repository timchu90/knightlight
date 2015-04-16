var player = argument0;
var arrow = argument1;
var controller = player -1;

if (canshoot[player] = true) {
    // Charge arrow while trigger button is held down
    if((gamepad_button_check(controller,gp_shoulderr) || 
        gamepad_button_check(controller,gp_shoulderrb)))
    {
        ischarging[player] = true;
        if (charge[player] < maxcharge) {// if not fully chagred...
            charge[player] += 1;   
            image_index = 1;      // increase charge every frame.
        }
        else{
            image_index = 2;
        }
    }
    
    // Release an arrow upon trigger button release.
    if((gamepad_button_check_released(controller,gp_shoulderr) || 
        gamepad_button_check_released(controller,gp_shoulderrb)))
    {
        
        instance_create(x,y,arrow);
        canshoot[player] = false;
        ischarging[player] = false;
        charge[player] = 0;
        alarm[0] = room_speed * 0.7;
        image_index = 0;
    }
}