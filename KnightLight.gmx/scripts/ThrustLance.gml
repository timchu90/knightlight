var player = argument3;
hspeed_ = argument0;
vspeed_ = argument1;
var controller = argument2;
var hCollide = false;
var vCollide = false;

if (collision_circle(x + hspeed_, y, 16, obj_wall, 1, 1))
    //|| collision_circle(x - hspeed_, y, 16, obj_wall, 1, 1))
{
    hCollide = true;
    //show_message(hspeed);
    ;//hspeed = 0;
}
if (collision_circle(x, y + vspeed_, 16, obj_wall, 1, 1))
    //|| collision_circle(x, y - vspeed_, 16, obj_wall, 1, 1))
{
    vCollide = true;
    ;//vspeed = 0;
    //show_message(vspeed_arg);
}
if (collision_circle(x + hspeed_, y + vspeed_, 16, obj_wall, 1, 1))
    //|| collision_circle(x - hspeed_, y - vspeed_, 16, obj_wall, 1, 1)
    //|| collision_circle(x + hspeed_, y - vspeed_, 16, obj_wall, 1, 1)
    //|| collision_circle(x - hspeed_, y + vspeed_, 16, obj_wall, 1, 1))
{
    //show_message("");
    if (hspeed > vspeed)
    {
        vCollide = true;
        ;//vspeed = 0;
    }
    else
    {
        hCollide = true;
        ;//hspeed = 0;
    }
}

if (!hCollide)
{
    player.hspeed = hspeed_;
}
if (!vCollide)
{
    player.vspeed = vspeed_;
}



player.direction = thrustDirectionArray[controller];
