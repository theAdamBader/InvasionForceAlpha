var dist1, dist2, dist3, dist4, dist5, dist6, dist7, dist8, nearest_attackSquare;

nearest_attackSquare = instance_nearest(mouse_x, mouse_y, obj_attackSquare);

//checks the left square 
if(instance_position(nearest_attackSquare.x-32, nearest_attackSquare.y, obj_moveSquare)){dist1 = point_distance(global.selected.x, global.selected.y, nearest_attackSquare.x-32, nearest_attackSquare.y);}
else{dist1 = 10000;}//distant between ally and enemy
//checks the right square
if(instance_position(nearest_attackSquare.x+32, nearest_attackSquare.y, obj_moveSquare)){dist2 = point_distance(global.selected.x, global.selected.y, nearest_attackSquare.x+32, nearest_attackSquare.y);}
else{dist2 = 10000};
//checks the top square
if(instance_position(nearest_attackSquare.x, nearest_attackSquare.y-32, obj_moveSquare)){dist3 = point_distance(global.selected.x, global.selected.y, nearest_attackSquare.x, nearest_attackSquare.y-32);}
else{dist3 = 10000};
//checks the bottom square
if(instance_position(nearest_attackSquare.x, nearest_attackSquare.y+32, obj_moveSquare)){dist4 = point_distance(global.selected.x, global.selected.y, nearest_attackSquare.x, nearest_attackSquare.y+32);}
else{dist4 = 10000};
//checks top left
if(instance_position(nearest_attackSquare.x-32, nearest_attackSquare.y-32, obj_moveSquare)){dist5 = point_distance(global.selected.x, global.selected.y, nearest_attackSquare.x-32, nearest_attackSquare.y-32);}
else{dist5 = 10000}; 
//checks bottom left
if(instance_position(nearest_attackSquare.x-32, nearest_attackSquare.y+32, obj_moveSquare)){dist6 = point_distance(global.selected.x, global.selected.y, nearest_attackSquare.x-32, nearest_attackSquare.y+32);}
else{dist6 = 10000;}
//check top right
if(instance_position(nearest_attackSquare.x+32, nearest_attackSquare.y-32, obj_moveSquare)){dist7 = point_distance(global.selected.x, global.selected.y, nearest_attackSquare.x+32, nearest_attackSquare.y-32);}
else{dist7 = 10000;}
//checks bottom right
if(instance_position(nearest_attackSquare.x+32, nearest_attackSquare.y+32, obj_moveSquare)){dist8 = point_distance(global.selected.x, global.selected.y, nearest_attackSquare.x+32, nearest_attackSquare.y+32);}
else{dist8 = 10000;}

destination = min(dist1, dist2, dist3, dist4, dist5, dist6, dist7, dist8);//the destination 

if(destination == dist1){
    global.xAttackTravel = nearest_attackSquare.x-32;
    global.yAttackTravel = nearest_attackSquare.y;
}

else if(destination == dist2){
    global.xAttackTravel = nearest_attackSquare.x+32;
    global.yAttackTravel = nearest_attackSquare.y;
}

else if(destination == dist3){
    global.xAttackTravel = nearest_attackSquare.x;
    global.yAttackTravel = nearest_attackSquare.y-32;
}

else if(destination == dist4){
    global.xAttackTravel = nearest_attackSquare.x;
    global.yAttackTravel = nearest_attackSquare.y+32;
}

else if(destination == dist5){
    global.xAttackTravel = nearest_attackSquare.x-32;
    global.yAttackTravel = nearest_attackSquare.y-32;
}

else if(destination == dist6){
    global.xAttackTravel = nearest_attackSquare.x-32;
    global.yAttackTravel = nearest_attackSquare.y+32;
}

else if(destination == dist7){
    global.xAttackTravel = nearest_attackSquare.x+32;
    global.yAttackTravel = nearest_attackSquare.y-32;
}

else if(destination == dist8){
    global.xAttackTravel = nearest_attackSquare.x+32;
    global.yAttackTravel = nearest_attackSquare.y+32;
}
