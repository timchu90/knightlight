screen_shake = 0
if (screen_shake > 1)
    {
        // Edit Out Either Of These To Allow For Just Horizontal Or Vertical
        view_xview[0] += round(random(32) - random(32));
        view_yview[0] += round(random(32) - random(32));
    }
    
screen_shake -= 1;
if (screen_shake < 0)
    {
        screen_shake = 0;
        if (view_xview[0] < 0 || view_xview[0] > 0 || view_yview[0] < 0 || view_yview[0] > 0)
            {
                repeat (8)
                    {
                        if (view_xview[0] < 0) {view_xview[0] += 1;} if (view_xview[0] > 0) {view_xview[0] -= 1;}
                        if (view_yview[0] < 0) {view_yview[0] += 1;} if (view_yview[0] > 0) {view_yview[0] -= 1;}
                    }
            }
    }
