///DrawMenu(int player)
player = argument0;

if(menustart[player] == false){
    draw_set_color(c_black);
    draw_text(x-100,y+220,"PRESS <START> TO JOIN");
}
else{
    if(player == 1){
        draw_sprite_ext(sp_redmenu,-1,x,y+120,0.8,0.8,0,c_white,1);
    }
    if(player == 2){
        draw_sprite_ext(sp_bluemenu,-1,x,y+120,0.8,0.8,0,c_white,1);
    }
    if(player == 3){
        draw_sprite_ext(sp_greenmenu,-1,x,y+120,0.8,0.8,0,c_white,1);
    }
    if(player == 4){
        draw_sprite_ext(sp_yellowmenu,-1,x,y+120,0.8,0.8,0,c_white,1);
    }
    
    if(menuselect[player] == 1){
        if(menuconfirm[player] == false){
            draw_set_color(c_black);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_stretched(sp_flail,-1,x-100,y+60,80,80);
        draw_sprite(sp_flailcontrols,-1,x,y+500);
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x-50,y+240,"FLAIL");
    
    if(menuselect[player] == 2){
        if(menuconfirm[player] == false){
            draw_set_color(c_black);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_sword,-1,x-60,y+115,1.5,1.5,-90,c_white,1);
        draw_sprite(sp_swordcontrols,-1,x,y+500);
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x-50,y+260,"SWORD");
    
    if(menuselect[player] == 3){
        if(menuconfirm[player] == false){
            draw_set_color(c_black);
        }
        else{
            draw_set_color(c_red);
        }
        with(draw_sprite_ext(sp_bow,2,x-60,y+80,1.2,1.2,0,c_white,1)){
            image_speed = 0;
        }
        draw_sprite(sp_bowcontrols,-1,x,y+500);
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x-50,y+280,"BOW");
    
    if(menuselect[player] == 4){
        if(menuconfirm[player] == false){
            draw_set_color(c_black);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_lance,-1,x-60,y+145,1,1,0,c_white,1);//draw lance sprite
        draw_sprite(sp_lancecontrols,-1,x,y+500);
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x-50,y+300,"LANCE");
    
        if(menuselect[player] == 5){
        if(menuconfirm[player] == false){
            draw_set_color(c_black);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_potion,-1,x-60,y+80,2,2,0,c_white,1);//draw magic sprite
        draw_sprite(sp_magiccontrols,-1,x,y+500);
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x-50,y+320,'"MAGIC"');
}

if (menuconfirm[player] == false && menustart[player] == true)
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
    draw_text(x-80,510,"PRESS <A> TO CONFIRM");
}

