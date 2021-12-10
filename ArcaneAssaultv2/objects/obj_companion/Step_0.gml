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
		
		//if no enemies, figh boss if there
		if(nearestEnemy == noone and instance_exists(obj_lichKing)){
			enemyToCheck = instance_find(obj_lichKing,0);
		
			if(!scr_isOutsideScreen(enemyToCheck)){
				nearestEnemy = enemyToCheck;
			}
		}


		if(nearestEnemy != noone){
			//if found enemy, attack enemy
			scr_moveToward(id,nearestEnemy,compSpeed*1.5);
		}else{
			//else fall in line behind player
			
			if(instance_exists(obj_player)){
				playerObj = instance_find(obj_player,0);
				if(ds_exists(playerObj.currentCompanions,ds_type_list)){
					
					selfIndex = ds_list_find_index(playerObj.currentCompanions,id);
					//show_debug_message(selfIndex);
					if(selfIndex <= 0){
						scr_moveToward(id,obj_player,compSpeed);
					}else{
						scr_moveToward(id,ds_list_find_value(playerObj.currentCompanions,selfIndex-1),compSpeed)
					}
				}
			}
		}
	
		if(canAttack){
			if(lastX == x and lastY == y){
				sprite_index = idleSprite;
			}else{
				sprite_index = walkSprite;
			}
		}
	
		//attack if close enough
		if(canAttack and scr_checkBox(x,y-30,x+(image_xscale*240),y+30,obj_enemy)){
			//can attack, so attack
			
			canAttack = false;
			//alarm[0] = 1.5 * room_speed;
			sprite_index = attackSprite;
		
		
		}
		if(sprite_index == attackSprite and image_index >= attackStartFrame and !instance_exists(attackObj)){
			
			attackObj=instance_create_layer(x,y,"Instances",obj_compAttack);
		}
	
		if(instance_exists(attackObj)){
				attackObj.x = x;
				attackObj.y = y;
				attackObj.image_xscale = image_xscale;
				if(image_index >=attackEndFrame){
					instance_destroy(attackObj);
				}
		}
		
		
		
		
		lastX = x;
		lastY = y;
	
	}
	
}
else{
	//kill self
	event_user(1);
	
}