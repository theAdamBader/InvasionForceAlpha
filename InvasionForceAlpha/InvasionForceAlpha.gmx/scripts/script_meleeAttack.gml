if(sprite_index != attackAnimation){//
    if(global.enemy.x < x) {image_xscale = -1;}
    sprite_index = attackAnimation;
    image_index = 0;
}

if(image_index >= image_number-1){
    sprite_index = idleAnimation;
    
    global.damageDealt = irandom(attack);
    global.enemy.defence -= global.damageDealt;
    instance_create(global.enemy.x, global.enemy.y, obj_damageDealt);
    if(global.enemy.defence <= 0){
        global.enemy.sprite_index = global.enemy.deathAnimation;   
    }
    global.attacking = false;
}
