/// @description Insert description here
// You can write your code in this editor


if(compHealth > 0){
	
	if(awake){
	
	
		//move toward nearest enemy
	
		//find nearest onscreen enemy	
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
			//if found enemy, attack enemy
			scr_moveToward(id,nearestEnemy,compSpeed*1.5);
		}else{
			//else fall in line behind player
			
			if(instance_exists(obj_player)){
				playerObj = instance_find(obj_player,0);
				selfIndex = ds_list_find_index(playerObj.currentCompanions,id);
				show_debug_message(selfIndex);
				if(selfIndex <= 0){
					scr_moveToward(id,obj_player,compSpeed);
				}else{
					scr_moveToward(id,ds_list_find_value(playerObj.currentCompanions,selfIndex-1),compSpeed)
				}
			}
		}
	
	
	
		//attack if close enough
		if(canAttack and scr_checkBox(x,y-30,x+(image_xscale*240),y+30,obj_enemy)){
			//can attack, so attack
			attackObj=instance_create_layer(x,y,"Instances",obj_compAttack);
			canAttack = false;
			alarm[0] = 1.5 * room_speed;
	
		
		
		}
	
		if(instance_exists(attackObj)){
				attackObj.x = x;
				attackObj.y = y;
				attackObj.image_xscale = image_xscale;
		}
	
	}
}
else{
	event_user(1);
}