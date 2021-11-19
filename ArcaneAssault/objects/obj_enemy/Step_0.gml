/// @description Insert description here
// You can write your code in this editor

if(enemyHealth > 0){
	


	seeking = !scr_isOutsideScreen(id,sprite_xoffset,sprite_yoffset,sprite_height,sprite_width);

	//show_debug_message(seeking)

	if(seeking and instance_exists(obj_player)){
	
		scr_moveToward(id,obj_player,enemySpeed);
	
	}

	//attack if close enough
	
	//try to attack companion
	if(canAttack and scr_checkBox(x,y-30,x+(image_xscale*240),y+30,obj_companion)){
		//can attack, so attack
		attackObj=instance_create_layer(x,y,"Instances",obj_enemyAttack);
		canAttack = false;
		alarm[0] = 2 * room_speed;
	
		
		
	}
	//else if try attack player
	else if(canAttack and scr_checkBox(x,y-30,x+(image_xscale*240),y+30,obj_player)){
		//can attack, so attack
		attackObj=instance_create_layer(x,y,"Instances",obj_enemyAttack);
		canAttack = false;
		alarm[0] = 2 * room_speed;
	
		
		
	}
	
	if(instance_exists(attackObj)){
			attackObj.x = x;
			attackObj.y = y;
			attackObj.image_xscale = image_xscale;
	}
	

}
else{
	event_user(0);
}