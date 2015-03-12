force = argument0;
forcedir = argument1;

xsp = lengthdir_x(force,forcedir) + lengthdir_x(speed,direction);
ysp = lengthdir_y(force,forcedir) + lengthdir_y(speed,direction);

speed = point_distance(x,y,x+xsp,y+ysp);
direction = point_direction(x,y,x+xsp,y+ysp);