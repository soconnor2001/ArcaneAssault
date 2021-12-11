/// @description move and attack if on screen
// You can write your code in this editor

if(enemyHealth > 0){
	


	seeking = !scr_isOutsideScreen(id,sprite_xoffset,sprite_yoffset,sprite_height,sprite_width);

	//show_debug_message(seeking)

	if(seeking and instance_exists(obj_player)){
		
		playerObj = instance_find(obj_player,0);
		
		
		//first, check for nearby companions
		if(ds_exists(playerObj.currentCompanions,ds_type_list) and ds_list_size(playerObj.currentCompanions)>0){
			
			//this is the farthest an enemy will go to attack a companion
			shortestDistance = 360;
			closestComp = noone;
			for(i = 0; i < ds_list_size(playerObj.currentCompanions); i++){
				comp = ds_list_find_value(playerObj.currentCompanions,i);
				
				if(instance_exists(comp) and point_distance(x,y,comp.x,comp.y) <= shortestDistance){
					shortestDistance = point_distance(x,y,comp.x,comp.y);
					closestComp = comp;
				}
			}
			if(closestComp != noone){
			
				//go after companion
				scr_moveToward(id,closestComp,enemySpeed);
				
				//sprite_index = walkSprite;
			}else{
				//go after player
				scr_moveToward(id,playerObj,enemySpeed);
				// = walkSprite;
			}
		}else{
			//go after player
			scr_moveToward(id,playerObj,enemySpeed);
			//sprite_index = walkSprite;
		}
	
	}

	
	if(canAttack){
			if(xprevious == x and yprevious == y){
				sprite_index = idleSprite;
			}else{
				sprite_index = walkSprite;
			}
	}

	//attack if close enough
	
	//try to attack companion
	if(canAttack and scr_checkBox(x,y-30,x+(image_xscale*240),y+30,obj_companion)){
		//can attack, so attack
		attackObj=instance_create_layer(x,y,"Instances",obj_enemyAttack);
		sprite_index = attackSprite;
		image_index = 0;
		canAttack = false;
		//alarm[0] = 2 * room_speed;
		
		
		
	}
	//else if try attack player
	else if(canAttack and scr_checkBox(x,y-30,x+(image_xscale*240),y+30,obj_player)){
		//can attack, so attack
		//attackObj=instance_create_layer(x,y,"Instances",obj_enemyAttack);
		sprite_index = attackSprite;
		image_index = 0;
		canAttack = false;
		//alarm[0] = 2 * room_speed;
		
		
		
	}
	
	if(	sprite_index == attackSprite and (attackStartFrame <= image_index and image_index < attackEndFrame) and !instance_exists(attackObj)){
		//start doing damage
		attackObj=instance_create_layer(x,y,"Instances",obj_enemyAttack);
		if(!audio_is_playing(sndAttack)){
			audio_play_sound_at(sndAttack,x,y,0,50,100,1,false,0);
		}
		//show_debug_message("made attack");
	}
	
	if(instance_exists(attackObj)){
			attackObj.x = x;
			attackObj.y = y;
			attackObj.image_xscale = image_xscale;
			if(image_index > attackEndFrame){
				instance_destroy(attackObj);
			}
		
	}
	
	if(canAttack){
			if(xprevious == x and yprevious == y){
				sprite_index = idleSprite;
				if(audio_is_playing(snd_walking)){
					audio_stop_sound(snd_walking);
				}
			}else{
				sprite_index = walkSprite;
				if(!audio_is_playing(snd_walking)){
					snd_walking = audio_play_sound_at(sndWalk,x,y,0,50,100,1,true,0);
				}
			
			}
	
	}

}
else{
	sprite_index = deathSprite;
	//event_user(0);
}