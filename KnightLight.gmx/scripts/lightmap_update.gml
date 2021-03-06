//update all lights
with(obj_player1){
    if(flashon[1] == true){
        light_update(true);
    }
    else
        light_update(false);
}
with(obj_player2){
    if(flashon[2] == true){
        light_update(true);
    }
    else
        light_update(false);
}
with(obj_player3){
    if(flashon[3] == true){
        light_update(true);
    }
    else
        light_update(false);
}
with(obj_player4){
    if(flashon[4] == true){
        light_update(true);
    }
    else
        light_update(false);
}
with(obj_light){
    light_update(true);
}
with(obj_arrow1){
    if(light){
        light_update(true);
    }
    else{
        light_update(false);
    }
}
with(obj_arrow2){
    if(light){
        light_update(true);
    }
    else{
        light_update(false);
    }
}
with(obj_arrow3){
    if(light){
        light_update(true);
    }
    else{
        light_update(false);
    }
}
with(obj_arrow4){
    if(light){
        light_update(true);
    }
    else{
        light_update(false);
    }
}
with(obj_spark){
    light_update(true);
}
with(obj_littlespark){
    light_update(true);
}
with(obj_ghost1){
    light_update(true);
}
with(obj_ghost2){
    light_update(true);
}
with(obj_ghost3){
    light_update(true);
}
with(obj_ghost4){
    light_update(true);
}
with(obj_discoball){
    light_update_disco(true);
}
with(obj_thunder){
    if(alarm[1] == -1){
        light_update(true);
    }
    else{
        light_update(false);
    }
}
with(obj_explode){
    light_update(false);
}
with(obj_bomb){
    light_update(true);
}
with(obj_lava){
    if(lava_on == true){
        light_update_lava(true);
    }
    else{
        light_update_lava(false);
    }
}
with(obj_switch){
    light_update(true);
}
with(obj_arrow_charge1){
    light_update(true);
}
with(obj_arrow_charge2){
    light_update(true);
}
with(obj_arrow_charge3){
    light_update(true);
}
with(obj_arrow_charge4){
    light_update(true);
}
//set the surface target
surface_set_target(lightmap);

//draw a black background
draw_clear(c_black);

//set the brightness
draw_set_alpha(brightness);

//set the color to white
draw_set_color(c_white);

//draw a white rectangle with the provided alpha value to create the ambiant light
draw_rectangle(0,0,surface_get_width(lightmap),surface_get_height(lightmap),false);

//reset the alpha value back to one
draw_set_alpha(1);

//set the blend mode to addictive blending, so the lights blend toghether nicely with multiple colors
draw_set_blend_mode(bm_add);

//draw the lights onto this surface
with(obj_player1){
    light_draw();
}
with(obj_player2){
    light_draw();
}
with(obj_player3){
    light_draw();
}
with(obj_player4){
    light_draw();
}
with(obj_light){
    light_draw();
}
with(obj_arrow1){
    light_draw();
}
with(obj_arrow2){
    light_draw();
}
with(obj_arrow3){
    light_draw();
}
with(obj_arrow4){
    light_draw();
}
with(obj_spark){
    light_draw();
}
with(obj_ghost1){
    light_draw();
}
with(obj_ghost2){
    light_draw();
}
with(obj_ghost3){
    light_draw();
}
with(obj_ghost4){
    light_draw();
}
with(obj_deathghost){
    light_draw(true);
}
with(obj_discoball){
    light_draw();
}
with(obj_thunder){
    light_draw();
}
with(obj_explode){
    light_draw();
}
with(obj_bomb){
    light_draw();
}
with(obj_lava){
    light_draw();
}
with(obj_switch){
    light_draw();
}
with(obj_arrow_charge1){
    light_draw();
}
with(obj_arrow_charge2){
    light_draw();
}
with(obj_arrow_charge3){
    light_draw();
}
with(obj_arrow_charge4){
    light_draw();
}
with(obj_littlespark){
    light_draw();
}
//reset blend mode
draw_set_blend_mode(bm_normal);

//reset surface
surface_reset_target();