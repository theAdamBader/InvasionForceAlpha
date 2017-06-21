mp_grid_clear_rectangle(global.objectGrid, 0, 0, 1280, 704);//clears the grid

with(parent_path){
    if(self.id != global.selected.id){
    mp_grid_add_rectangle(global.objectGrid, x, y, x, y);//this allows units not to overlap each other
    }
}

with(parent_enemy){
    if(self.id != global.selected.id){
    mp_grid_add_rectangle(global.objectGrid, x, y, x, y);//this allows units not to overlap each other
    }
}

//----------------------------------------------------------------------

for (i = 0; i < 48; i++){

    var arrayX;
    arrayX = 32*i;//where the move grid starts

    if (mp_grid_path(global.objectGrid, global.navigate, global.selected.currentNode_x, global.selected.currentNode_y, arrayX, rows, 0)){

        if (path_get_length(global.navigate) <= global.selected.pixelDist){
    
            instance_create(arrayX, rows, obj_moveSquare);
        }
       else{ mp_grid_add_rectangle(global.objectGrid, arrayX, rows, arrayX, rows);}
    }

    if (arrayX >= 1280){//if the x axis is more or euqal to 1280 then runs below
        i = 0;
        rows += 32;
    }

    if (rows > 1280){//checks the rows of the grid so if its more than 1280 then run below

        rows = 0;
        i = 64;
   
    }
}
