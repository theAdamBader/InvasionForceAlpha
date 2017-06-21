attack = argument0;
defence = argument1;
currentHealth = argument2;

damage = attack - defence;
remainingHealth = currentHealth - damage;
return remainingHealth;
