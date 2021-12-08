/// @description 
// You can write your code in this editor

//check if player alive
if(playerHealth > 0){
	


	//movement
	deltaX=0;
	deltaY=0;

	if(keyboard_check(vk_up)){
		//move up
		deltaY -= playerSpeed;
	}
	if(keyboard_check(vk_left)){
		//move left
		deltaX -= playerSpeed;
	}
	if(keyboard_check(vk_down)){
		//move down
		deltaY += playerSpeed;
	}
	if(keyboard_check(vk_right)){
		//move right
		deltaX += playerSpeed;
	}


	if(deltaX == 0 and deltaY == 0){
		//idle
		if(canAttack){
			
			sprite_index = spr_playerIdle;
		}
	}else{
		if(canAttack){
			sprite_index = spr_playerWalk;
		}
		if(deltaX > 0){
			//face right
			image_xscale = 1;
		}else if(deltaX < 0){
			//face left
			image_xscale = -1;
		}
		scr_VerticalMove(deltaY,id);
		scr_HorizontalMove(deltaX,id);
	}

	depth = -y;

	//attack
	if(keyboard_check(ord("C")) and canAttack){
		//do attack animation
		//attackObj=instance_create_layer(x,y,"Instances",obj_playerAttack);
		canAttack = false;
		//alarm[0] = .5 * room_speed;
		sprite_index = spr_playerMeleeAttack;
		image_index = 0;
	
	}
	if(	sprite_index == spr_playerMeleeAttack and (30 <= image_index and image_index <43) and !instance_exists(attackObj)){
		//start doing damage
		attackObj=instance_create_layer(x,y,"Instances",obj_playerAttack);
		//show_debug_message("made attack");
	}
	//show_debug_message(image_index);
	if(instance_exists(attackObj)){
		attackObj.x = x;
		attackObj.y = y;
		attackObj.image_xscale = image_xscale;
		if(image_index > 43){
			instance_destroy(attackObj);
		}
	}
	
	//do fireball
	if(keyboard_check(ord("X")) and canAttack and mana >= 2){
		canAttack = false;
		sprite_index = spr_playerMagicAttack;
		image_index = 0;
		instance_create_layer(x,y,"Instances",obj_fireball);
		mana -= 2;
		
	}

	//summon companion
	if(keyboard_check_pressed(ord("Z")) and canAttack){
		event_user(0);
	
	}
	
	//check if all enemies dead and offscreen
	if(!instance_exists(obj_enemy) and scr_isOutsideScreen(id)){
		room_goto_next();
	}

}
else{
	event_user(1); 
}

	
