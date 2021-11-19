/// @description 
// You can write your code in this editor

//check if player alive
if(playerHealth > 0){
	


	//movement
	deltaX=0
	deltaY=0

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
	}else{
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
		//do attack
		attackObj=instance_create_layer(x,y,"Instances",obj_playerAttack);
		canAttack = false;
		alarm[0] = .5 * room_speed;
	
	}
	if(instance_exists(attackObj)){
		attackObj.x = x;
		attackObj.y = y;
		attackObj.image_xscale = image_xscale;
	}

	//summon companion
	if(keyboard_check_pressed(ord("Z"))){
		event_user(0);
	
	}

}
else{
	event_user(1); 
}

	
