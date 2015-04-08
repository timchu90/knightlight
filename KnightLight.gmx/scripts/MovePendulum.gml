
if(mass<>0){
ApplyForce(grav/mass,270);

    if(speed > 0 and speed > fric * speed/mass) or (speed <0 and speed < fric*speed/mass){
        speed -= fric*speed/mass;
    }
    else{
        speed = 0;
    }
}
ApplyForce(point_distance(x,y,attached.x,attached.y)-length, 
    point_direction(x,y,attached.x,attached.y));

x += lengthdir_x(point_distance(x,y,attached.x,attached.y)-length,point_direction(x,y,attached.x,attached.y));
    
y += lengthdir_y(point_distance(x,y,attached.x,attached.y)-length,point_direction(x,y,attached.x,attached.y));
