var hspeed_ = argument0;
var vspeed_ = argument1;
var controller = argument2;
var player_ = argument3;
var hCollide = false;
var vCollide = false;

if (collision_circle(x + hspeed_, y, 16, obj_wall, 1, 1)
    || collision_circle(x - hspeed_, y, 16, obj_wall, 1, 1))
{
    hCollide = true;
    //show_message(hspeed);
    ;//hspeed = 0;
}
if (collision_circle(x, y + vspeed_, 16, obj_wall, 1, 1)
    || collision_circle(x, y - vspeed_, 16, obj_wall, 1, 1))
{
    vCollide = true;
    ;//vspeed = 0;
    //show_message(vspeed_arg);
}
if (collision_circle(x - hspeed_, y - vspeed_, 16, obj_wall, 1, 1)
    || collision_circle(x + hspeed_, y + vspeed_, 16, obj_wall, 1, 1)
    || collision_circle(x + hspeed_, y - vspeed_, 16, obj_wall, 1, 1)
    || collision_circle(x - hspeed_, y + vspeed_, 16, obj_wall, 1, 1))
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
    hspeed = hspeed_;
}
if (!vCollide)
{
    vspeed = vspeed_;
}
direction = thrustDirectionArray[controller];
