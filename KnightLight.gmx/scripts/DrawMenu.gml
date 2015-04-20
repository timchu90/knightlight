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
        if(player == 1 || player == 3){
            draw_sprite(sp_flailcontrols,-1,x-150,y-25);
        }
        else{
            draw_sprite(sp_flailcontrols,-1,x+325,y-25);
        }
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
        if(player == 1 || player == 3){
            draw_sprite(sp_swordcontrols,-1,x-150,y-25);
        }
        else{
            draw_sprite(sp_swordcontrols,-1,x+325,y-25);
        }
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
        with(draw_sprite_ext(sp_bow,2,x+130,y+50,1.5,1.5,0,c_white,1)){
            image_speed = 0;
        }
        
        if(player == 1 || player == 3){
            draw_sprite(sp_bowcontrols,-1,x-150,y-25);
        }
        else{
            draw_sprite(sp_bowcontrols,-1,x+325,y-25);
        }
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x,y+80,"BOW");
    
    if(menuselect[player] == 4){
        if(menuconfirm[player] == false){
            draw_set_color(c_white);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_lance,-1,x+130,y+100,1.2,1.2,0,c_white,1);//draw lance sprite
        if(player == 1 || player == 3){
            draw_sprite(sp_lancecontrols,-1,x-150,y-25);
        }
        else{
            draw_sprite(sp_lancecontrols,-1,x+325,y-25);
        }
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x,y+120,"LANCE");
    
        if(menuselect[player] == 5){
        if(menuconfirm[player] == false){
            draw_set_color(c_white);
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_potion,-1,x+130,y+75,3,3,0,c_white,1);//draw magic sprite
        if(player == 1 || player == 3){
            draw_sprite(sp_magiccontrols,-1,x-150,y-25);
        }
        else{
            draw_sprite(sp_magiccontrols,-1,x+325,y-25);
        }
    }
    else{
        draw_set_color(c_gray);
    }
    draw_text(x,y+160,'"MAGIC"');
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
    draw_text(320,450,"PRESS <START> WHEN ALL PLAYERS ARE READY");
}
