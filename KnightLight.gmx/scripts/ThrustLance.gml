var player = argument3;
var hspeed_ = argument0;
var vspeed_ = argument1;
var controller = argument2;
var hCollide = false;
var vCollide = false;

//collision detection
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
{//this doesn't work
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
//sets the speed if there is no collision
if (!hCollide)
{
    player.hspeed = hspeed_;
}
if (!vCollide)
{
    player.vspeed = vspeed_;
}
//sets the player's direction to the direction that was stored
//at the start of the thrust
player.direction = thrustDirectionArray[controller];
