//script_navigation(startX, startY, endX, endY)
var startX = argument0;
var startY= argument1;
var endX = argument2;
var endY = argument3;

if !(mp_grid_path(global.map_grid, global.navigate, startX, startY, endX, endY, 1)){

    show_message("Unable to move");
    return false;
}else {
    mp_grid_path(global.map_grid, global.navigate, startX, startY, endX, endY, 1);
    path_start(global.navigate, 3, 0, false);
    return true;
}
