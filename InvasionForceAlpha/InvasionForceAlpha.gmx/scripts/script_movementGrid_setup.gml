xx = argument0
yy = argument1
currentObj = argument2;
moveLimit = argument3;
mode = argument4;

//movement
if(mode = 0){
    movementGrid = mp_grid_create( xx - (GRID_SIZE*floor(moveLimit/2)), yy - (GRID_SIZE*floor(moveLimit/2)), moveLimit, moveLimit, GRID_SIZE, GRID_SIZE);
    mp_grid_add_instances(movementGrid, mapWallDown, 1);
    mp_grid_add_instances(movementGrid, mapWallAcross, 1);
    mp_grid_add_instances(movementGrid, mapWallTopLeft, 1);
    mp_grid_add_instances(movementGrid, mapWallTopRight, 1);
    mp_grid_add_instances(movementGrid, mapWallBottomLeft, 1);
    mp_grid_add_instances(movementGrid, mapWallBottomRight, 1);
    mp_grid_add_instances(movementGrid, mapGround, 1);
    mp_grid_add_instances(movementGrid, obj_meleeEnemy, 1);
    mp_grid_add_instances(movementGrid, obj_rangerEnemy, 1);
    if(currentObj == obj_playerMelee){
        mp_grid_add_instances(movementGrid, obj_playerRanger, 1);
        mp_grid_add_instances(movementGrid, obj_playerHealer, 1);
    }
    if(currentObj == obj_playerRanger){
        mp_grid_add_instances(movementGrid, obj_playerMelee, 1);
        mp_grid_add_instances(movementGrid, obj_playerHealer, 1);
    }
    if(currentObj == obj_playerHealer){
        mp_grid_add_instances(movementGrid, obj_playerMelee, 1);
        mp_grid_add_instances(movementGrid, obj_playerRanger, 1);
    }
    mp_grid_clear_cell(movementGrid, floor(moveLimit/2), floor(moveLimit/2));
}
//attack
else if(mode = 1){
    attackGrid = mp_grid_create( xx - (GRID_SIZE*floor(moveLimit/2)), yy - (GRID_SIZE*floor(moveLimit/2)), moveLimit, moveLimit, GRID_SIZE, GRID_SIZE);
    mp_grid_add_instances(attackGrid, mapWallDown, 1);
    mp_grid_add_instances(attackGrid, mapWallAcross, 1);
    mp_grid_add_instances(attackGrid, mapWallTopLeft, 1);
    mp_grid_add_instances(attackGrid, mapWallTopRight, 1);
    mp_grid_add_instances(attackGrid, mapWallBottomLeft, 1);
    mp_grid_add_instances(attackGrid, mapWallBottomRight, 1);
    mp_grid_add_instances(attackGrid, mapGround, 1);
    mp_grid_add_instances(attackGrid, obj_meleeEnemy, 1);
    mp_grid_add_instances(attackGrid, obj_rangerEnemy, 1);
    mp_grid_add_instances(attackGrid, obj_playerMelee, 1);
    mp_grid_add_instances(attackGrid, obj_playerRanger, 1);
    mp_grid_add_instances(attackGrid, obj_playerHealer, 1);
    mp_grid_clear_cell(attackGrid, floor(moveLimit/2), floor(moveLimit/2));
}
//enemy grid
if(mode = 2){
    enemyGrid = mp_grid_create( xx - (GRID_SIZE*floor(moveLimit/2)), yy - (GRID_SIZE*floor(moveLimit/2)), moveLimit, moveLimit, GRID_SIZE, GRID_SIZE);
    mp_grid_add_instances(enemyGrid, mapWallDown, 1);
    mp_grid_add_instances(enemytGrid, mapWallAcross, 1);
    mp_grid_add_instances(enemytGrid, mapWallTopLeft, 1);
    mp_grid_add_instances(enemyGrid, mapWallTopRight, 1);
    mp_grid_add_instances(enemyGrid, mapWallBottomLeft, 1);
    mp_grid_add_instances(enemyGrid, mapWallBottomRight, 1);
    mp_grid_add_instances(enemyGrid, mapGround, 1);
    mp_grid_add_instances(enemyGrid, obj_meleeEnemy, 1);
    mp_grid_add_instances(enemyGrid, obj_rangerEnemy, 1);
    mp_grid_add_instances(enemyGrid, obj_playerMelee, 1);
    mp_grid_add_instances(enemyGrid, obj_playerHealer, 1);
    mp_grid_add_instances(enemyGrid, obj_playerRanger, 1);
    mp_grid_clear_cell(enemyGrid, floor(moveLimit/2), floor(moveLimit/2));
}
