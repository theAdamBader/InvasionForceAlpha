if (instance_position(mouse_x, mouse_y, parent_path) && mouse_check_button_pressed(mb_left)){
    //if left click then selects player
    var player;
    player = instance_nearest(mouse_x, mouse_y, parent_path);
    
    global.selected = player;
    
    with(obj_moveSquare){instance_destroy();}//this stops the object moveSquare from overlapping each other
    with(obj_attackSquare){instance_destroy();}
    
    script_moveSquares();
}
else if(!instance_position(mouse_x, mouse_y, parent_path) && mouse_check_button_pressed(mb_left)){
    global.selected = noone;
    with(obj_moveSquare){instance_destroy();}
    with(obj_attackSquare){instance_destroy();}
}

//---------------------------------------------------------------------

if(global.selected != noone && mouse_check_button_pressed(mb_right)){//first click allows the unit to move
    
    if(instance_position(mouse_x, mouse_y, obj_moveSquare)){
        global.moving = true;
        with(obj_moveSquare){instance_destroy();}//instant destroys the square grid
        with(obj_attackSquare){instance_destroy();}
        //if right click then would allow the player to move
        with(global.selected){
            sprite_index = runAnimation;
            script_navigation(x, y, round(mouse_x/32)*32, round(mouse_y/32)*32, pace);
            pixelDist -= path_get_length(global.navigate);//this allows the units to move to the selected square
        }
    }

    else if(instance_position(mouse_x, mouse_y, obj_attackSquare)){//this activates the attack sqaure 
        global.enemy= instance_position(mouse_x, mouse_y, parent_enemy);
        global.attacking = true;
        with(global.selected){
            if(distance_to_object(obj_attackSquare) > 13){
                global.moving = true;
                script_calDist();
                sprite_index = runAnimation;
                script_navigation(x, y, round(global.xAttackTravel/32)*32, round(global.yAttackTravel/32)*32, pace);
                pixelDist -= path_get_length(global.navigate);
            }
        }
        with(obj_moveSquare){instance_destroy();}
        with(obj_attackSquare){instance_destroy();}
    }
}

//---------------------------------------------------------------------

if(global.moving == true){//if moving is true
    with(global.selected){
        if(path_index == -1){
        sprite_index = idleAnimation;
        currentNode_x = x;
        currentNode_y = y;
        global.moving = false;
        }       
    }
}

if(global.attacking == true){//if attacking is true
    if(global.moving == false){
        with(global.selected) {script_meleeAttack();}
    }
}
