///DrawMenu(int player)
player = argument0;

if(menustart[player] == false){
    draw_set_color(c_black);
    draw_text(x,y,"PRESS <START> TO JOIN");
}
else{
    if(menuselect[player] == 1){
        if(menuconfirm[player] == false){
            draw_set_color(c_white);//
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_stretched(sp_flail,-1,x+50,y,150,150);
    }
    else{
        draw_set_color(c_gray);//
    }
    draw_text(x,y,"FLAIL");
    
    if( menuselect[player] == 2){
        if(menuconfirm[player] == false){
            draw_set_color(c_white);//
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_sword,-1,x+125,y+75,2,2,-90,c_white,1);
    }
    else{
        draw_set_color(c_gray);//
    }
    draw_text(x,y+40,"SWORD");
    
    if(menuselect[player] == 3){
        if(menuconfirm[player] == false){
            draw_set_color(c_white);//
        }
        else{
            draw_set_color(c_red);
        }
        draw_sprite_ext(sp_bow,-1,x+125,y+75,4,4,0,c_white,1);
    }
    else{
        draw_set_color(c_gray);//
    }
    draw_text(x,y+80,"BOW");
}