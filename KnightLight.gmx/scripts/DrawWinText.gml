winner = argument0;

switch(winner)
{
    case 1:
    {
        draw_set_color(c_red);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        image_angle += 1;
        draw_text(room_width / 2, room_height / 2, "RED KNIGHT WINS!")//, 2, 2,
    //        image_angle);
        break;
    }
    case 2:
    {
        break;
    }
    case 3:
    {
        break;
    }
    case 4:
    {
        break;
    }
}
/*
if (alarm[1] > 1)
{
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    image_angle += 1;
    draw_text(room_width / 2, room_height / 2, "RED KNIGHT WINS!")//, 2, 2,
//        image_angle);
}
else if (alarm[2] > 1)
{
    ;//draw_text("BLUE KNIGHT WINS!");
}
else if (alarm[3] > 1)
{
    ;//draw_text("GREEN KNIGHT WINS!");
}
else if (alarm[4] > 1)
{
    ;//draw_text("YELLOW KNIGHT WINS!");
}
*/
