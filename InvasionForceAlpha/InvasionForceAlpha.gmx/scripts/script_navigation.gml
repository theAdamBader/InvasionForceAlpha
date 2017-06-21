///script_navigation(startX, startY, endX, endY, pace)
var startX = argument0;
var startY= argument1;
var endX = argument2;
var endY = argument3;
var pace = argument4;

if !(mp_grid_path(global.objectGrid, global.navigate, startX, startY, endX, endY, 0)){
    show_message("Unable to move");//if selected somewhere outside the grid path then it would not able to move
    return false;
}else {
//setting allowdiag at 0 stops the player from moving diag
    mp_grid_path(global.objectGrid, global.navigate, startX, startY, endX, endY, 0)
    path_start(global.navigate, pace, 0, false);
    return true;
}
