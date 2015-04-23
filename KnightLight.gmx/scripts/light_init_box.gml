//make the radius, color and alpha variables.
width=argument0;
height=argument1;
color=argument2;
alpha=argument3;
fadealpha = argument3;
radius = max(width,height);
//creating the light surface
lightsurface=surface_create(radius*2,radius*2);