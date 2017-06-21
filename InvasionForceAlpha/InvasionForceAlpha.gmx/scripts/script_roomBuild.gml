///draw room map
if(argument0 == rm_level1){
    //player characters
        //melee
    ds_grid_set(global.mapGrid, 2, 10, -1);
        //ranger
    ds_grid_set(global.mapGrid, 2, 11, -2);
        //healer
    ds_grid_set(global.mapGrid, 2, 12, -3);
    
    //enemy characters
        //melee
    ds_grid_set(global.mapGrid, 10, 11, -4);
    ds_grid_set(global.mapGrid, 14, 20, -4);
    ds_grid_set(global.mapGrid, 30, 3, -4);
        //ranger
    ds_grid_set(global.mapGrid, 12, 12, -5);
    ds_grid_set(global.mapGrid, 15, 19, -5);
    ds_grid_set(global.mapGrid, 32, 3, -5);         
    
    //building 1 (5, 2)-(10, 6)
    ds_grid_set_region(global.mapGrid, 6, 2, 9, 5, 7); //middle
    ds_grid_set_region(global.mapGrid, 5, 2, 10, 2, 1); //top
    ds_grid_set_region(global.mapGrid, 5, 6, 10, 6, 1); //bottom
    ds_grid_set_region(global.mapGrid, 5, 2, 5, 6, 2); //left
    ds_grid_set_region(global.mapGrid, 10, 2, 10, 6, 2); //right
    ds_grid_set(global.mapGrid, 5, 2, 3);
    ds_grid_set(global.mapGrid, 10, 2, 4);
    ds_grid_set(global.mapGrid, 5, 6, 5);
    ds_grid_set(global.mapGrid, 10, 6, 6);

    //building 2 (28, 10)-(35, 15)
    ds_grid_set_region(global.mapGrid, 29, 11, 34, 14, 7); //middle
    ds_grid_set_region(global.mapGrid, 29, 10, 34, 10, 1); //top
    ds_grid_set_region(global.mapGrid, 29, 15, 34, 15, 1); //bottom
    ds_grid_set_region(global.mapGrid, 28, 11, 28, 14, 2); //left
    ds_grid_set_region(global.mapGrid, 35, 11, 35, 14, 2); //right
    ds_grid_set(global.mapGrid, 28, 10, 3);
    ds_grid_set(global.mapGrid, 35, 10, 4);
    ds_grid_set(global.mapGrid, 28, 15, 5);
    ds_grid_set(global.mapGrid, 35, 15, 6);
    
    //building 3 (7, 13)-(20, 17)
    ds_grid_set_region(global.mapGrid, 8, 14, 19, 16, 7); //middle
    ds_grid_set_region(global.mapGrid, 8, 13, 19, 13, 1); //top
    ds_grid_set_region(global.mapGrid, 8, 17, 19, 17, 1); //bottom
    ds_grid_set_region(global.mapGrid, 7, 14, 7, 16, 2); //left
    ds_grid_set_region(global.mapGrid, 20, 13, 20, 16, 2); //right
    ds_grid_set(global.mapGrid, 7, 13, 3); //top left
    ds_grid_set(global.mapGrid, 20, 13, 4); //top right
    ds_grid_set(global.mapGrid, 7, 17, 5); //bottom left
    ds_grid_set(global.mapGrid, 20, 17, 6); //bottom right
    
    //building 4 (20, 3)-(23, 11)
    ds_grid_set_region(global.mapGrid, 21, 4, 22, 10, 7); //middle
    ds_grid_set_region(global.mapGrid, 21, 3, 22, 3, 1); //top
    ds_grid_set_region(global.mapGrid, 21, 11, 22, 11, 1); //bottom
    ds_grid_set_region(global.mapGrid, 20, 4, 20, 10, 2); //left
    ds_grid_set_region(global.mapGrid, 23, 4, 23, 10, 2); //right
    ds_grid_set(global.mapGrid, 20, 3, 3); //top left
    ds_grid_set(global.mapGrid, 23, 3, 4); //top right
    ds_grid_set(global.mapGrid, 20, 11, 5); //bottom left
    ds_grid_set(global.mapGrid, 23, 11, 6); //bottom right
    
    //building 5 (30 , 4)-(37, 7)
    ds_grid_set_region(global.mapGrid, 31, 5, 36, 6, 7); //middle
    ds_grid_set_region(global.mapGrid, 31, 4, 36, 4, 1); //top
    ds_grid_set_region(global.mapGrid, 31, 7, 36, 7, 1); //bottom
    ds_grid_set_region(global.mapGrid, 30, 5, 30, 6, 2); //left
    ds_grid_set_region(global.mapGrid, 37, 5, 37, 6, 2); //right
    ds_grid_set(global.mapGrid, 30, 4, 3); //top left
    ds_grid_set(global.mapGrid, 37, 4, 4); //top right
    ds_grid_set(global.mapGrid, 30, 7, 5); //bottom left
    ds_grid_set(global.mapGrid, 37, 7, 6); //bottom right
}

//generate room layout
for(var i = 0; i < ds_grid_width(global.mapGrid); i++){
    for(var j = 0; j < ds_grid_height(global.mapGrid); j++){
    
        //spawn players
        if(global.mapGrid[# i, j] == -1){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, obj_playerMelee));
        }
        else if(global.mapGrid[# i, j] == -2){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, obj_playerRanger));
        }
        else if(global.mapGrid[# i, j] == -3){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, obj_playerHealer));
        }
        //spawn enemies
        else if(global.mapGrid[# i, j] == -4){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, obj_meleeEnemy));
        }
        else if(global.mapGrid[# i, j] == -5){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, obj_rangerEnemy));
        }
        
        //spawn terrain  
        else if(global.mapGrid[# i, j] == 1){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, mapWallAcross));
        }
        else if(global.mapGrid[# i, j] == 2){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, mapWallDown));
        }
        else if(global.mapGrid[# i, j] == 3){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, mapWallTopLeft));
        }
        else if(global.mapGrid[# i, j] == 4){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, mapWallTopRight));
        }
        else if(global.mapGrid[# i, j] == 5){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, mapWallBottomLeft));
        }
        else if(global.mapGrid[# i, j] == 6){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, mapWallBottomRight));
        }
        else if(global.mapGrid[# i, j] == 7){
            ds_grid_set(global.mapGrid, i, j, instance_create(i*32, j*32, mapGround));
        }      
    }
}
