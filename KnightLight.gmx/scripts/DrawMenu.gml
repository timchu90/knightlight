///DrawMenu(int player)
player = argument0;

if(menustart[player] == false){
    draw_set_color(c_black);
    draw_text(x+50,y,"PRESS <START> TO JOIN");
}
else{
    if(player == 1){
        draw_sprite_ext(sp_redmenu,-1,x-50,y-50,1,1,0,c_white,1);
    }
    if(player == 2){
        draw_sprite_ext(sp_bluemenu,-1,x-50,y-50,1,1,0,c_white,1);
    }
    if(player == 3){
        draw_sprite_ext(sp_greenmenu,-1,x-50,y-50,1,1,0,c_white,1);
    }
    if(player == 4){
        draw_sprite_ext(sp_yellowmenu,-1,x-50,y-50,1,1,0,c_white,1);
    }
    
    if(menuselect[player] == 1){
        if(menuconfirm[player] == false){
            draw_set_color(c_white);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_stretched(sp_flail,-1,x+80,y,100,100);
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x,y,"FLAIL");
    
    if(menuselect[player] == 2){
        if(menuconfirm[player] == false){
            draw_set_color(c_white);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_sword,-1,x+130,y+75,1.75,1.75,-90,c_white,1);
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x,y+40,"SWORD");
    
    if(menuselect[player] == 3){
        if(menuconfirm[player] == false){
            draw_set_color(c_white);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_bow,-1,x+130,y+75,3,3,0,c_white,1);
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x,y+80,"BOW");
}
if (menuconfirm[player] == true && menustart[player] == true)
{
    if (obj_menubase.alarm[0] < 1)
    {
        obj_menubase.alarm[0] = room_speed * 2;
    }
    if (obj_menubase.alarm[0] > room_speed)
    {
        draw_set_color(c_red);
    }
    else
    {
        draw_set_color(c_black);
    }
    draw_text(338,470,"PRESS <START> WHEN ALL PLAYERS ARE READY");
}