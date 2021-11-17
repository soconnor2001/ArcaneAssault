/// @description Insert description here
// You can write your code in this editor

if(awake){
	
	
	//move toward nearest enemy
	
	shortestDistance = infinity;
	nearestEnemy = noone;
	for(i = 0; i<instance_number(obj_enemy);i++){
		enemyToCheck = instance_find(obj_enemy,i);
		
		if(!scr_isOutsideScreen(enemyToCheck,enemyToCheck.sprite_xoffset,
			enemyToCheck.sprite_yoffset,enemyToCheck.sprite_height,
			enemyToCheck.sprite_width)){
				
			distance = distance_to_object(enemyToCheck)
			if(shortestDistance>distance){
				shortestDistance = distance;
				nearestEnemy = enemyToCheck;
			}
		}
	}
	


	if(nearestEnemy != noone){
		scr_moveToward(id,nearestEnemy,compSpeed);
	}else{
		scr_moveToward(id,obj_player,compSpeed);
	}
	
	//attack if close enough
	if(canAttack and scr_checkBox(x,y+30,x+(image_xscale*240),y,obj_enemy)){
		//can attack, so attack
		attackObj=instance_create_layer(x,y,"Instances",obj_attack);
		canAttack = false;
		alarm[0] = 1.5 * room_speed;
	
		
		
	}
	
	if(instance_exists(attackObj)){
			attackObj.x = x;
			attackObj.y = y;
			attackObj.image_xscale = image_xscale;
	}
	
}