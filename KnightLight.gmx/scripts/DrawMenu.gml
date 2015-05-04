///DrawMenu(int player)
player = argument0;

if(menustart[player] == false){
    draw_set_color(c_white);
    draw_text(x-100,550,"PRESS <START> TO JOIN");
}
else{
    if(player == 1){
        draw_sprite_ext(sp_redmenu,-1,x,y+280,0.8,0.8,0,c_white,1);
    }
    if(player == 2){
        draw_sprite_ext(sp_bluemenu,-1,x,y+280,0.8,0.8,0,c_white,1);
    }
    if(player == 3){
        draw_sprite_ext(sp_greenmenu,-1,x,y+280,0.8,0.8,0,c_white,1);
    }
    if(player == 4){
        draw_sprite_ext(sp_yellowmenu,-1,x,y+280,0.8,0.8,0,c_white,1);
    }
    
    
    if(menuselect[player] == 1){
        draw_sprite_stretched(sp_flail,-1,x-100,y+220,80,80);
        draw_sprite(sp_flailcontrols,-1,x,y+500);
    }
    
    if(menuselect[player] == 2){
        draw_sprite_ext(sp_sword,-1,x-60,y+275,1.5,1.5,-90,c_white,1);
        draw_sprite(sp_swordcontrols,-1,x,y+500);
    }
    
    if(menuselect[player] == 3){
        with(draw_sprite_ext(sp_bow,2,x-60,y+300,1.2,1.2,0,c_white,1)){
            image_speed = 0;
        }
        draw_sprite(sp_bowcontrols,-1,x,y+500);
    }
    
    if(menuselect[player] == 4){
        draw_sprite_ext(sp_lance,-1,x-60,y+306,1,1,0,c_white,1);//draw lance sprite
        draw_sprite(sp_lancecontrols,-1,x,y+500);
    }
    
    if(menuselect[player] == 5){
        draw_sprite_ext(sp_potion,-1,x-60,y+240,2,2,0,c_white,1);//draw magic sprite
        draw_sprite(sp_magiccontrols,-1,x,y+500);
    }
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
        draw_sprite(sp_leftarrow,0,x-110,y+280)
        draw_sprite(sp_rightarrow,0,x-10,y+280)
    }
    else
    {
        draw_set_color(c_white);
        draw_sprite(sp_leftarrow,1,x-110,y+280)
        draw_sprite(sp_rightarrow,1,x-10,y+280)
    }
    draw_text(x-80,550,"PRESS <A> TO CONFIRM");
    
}
