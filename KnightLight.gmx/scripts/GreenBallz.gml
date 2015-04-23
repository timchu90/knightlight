for (var i = 1; i <= 4; i++)
{
    if (menustart[i])
    {
        playerhp[i] = 200;
    }
    with(instance_find(obj_ballz, i - 1))
    {
        if (areBallzGreen)
        {
            areBallzGreen = false;
            ready = true;
            surface_free(lightsurface);
            light_init(75,c_green,1);
        }
    }
}

for (var i = 1; i <= 4; i++)
{
    if (menuselect[i] == 3 || menuselect[i] == 5)//bow or magic
        i = i;//instance_create();
        //put the obstacle that you can shoot/throw pass here
}
