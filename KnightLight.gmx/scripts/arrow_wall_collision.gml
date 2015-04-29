if(collision_line(x,y,
x + lengthdir_x(speed,direction), 
y + lengthdir_y(speed,direction),
obj_wall,
false,
false) && stuck == false){
    speed = 0;
    move_contact_solid(direction,-1);
    if(alarm[2] == -1){
        alarm[2] = room_speed*1;
    }
}
