if(collision_circle(x + hspeed, y, 18, obj_wall, false, true)) { // Horizontal collision
    hspeed = 0; // Stop horizontal movement
    x = xprevious;
    
}
if(collision_circle(x, y + vspeed, 18, obj_wall, false, true)) { // Vertical collision
    vspeed = 0; // Stop vertical movement
    y = yprevious;
    
}
