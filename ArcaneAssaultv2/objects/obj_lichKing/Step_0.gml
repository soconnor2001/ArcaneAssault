/// @description 
// You can write your code in this editor

if(bossHealth > 0){
	

	if(!scr_isOutsideScreen(id)){
	
	
		//remove dead skeletons from currentSkeletons
		//for(i = 0; i<ds_list_size(currentSkeletons);i++){
		//	if(!instance_exists(ds_list_find_value(currentSkeletons,i))){
		//		ds_list_delete(currentSkeletons,i);
		//		//i--;
		//	}
		//}
		//index = 0;
		//while(index< ds_list_size(currentSkeletons)){
		//	if(!instance_exists(ds_list_find_value(currentSkeletons,index))){
		//		ds_list_delete(currentSkeletons,i);
		//		show_debug_message("skeleton deleted");
		//	}else{
		//		index++;
		//	}
		
		//}
	
		//show_debug_message(ds_list_size(currentSkeletons));
	
		if(canAttack and instance_number(obj_enemy) <= 1){
			//show_debug_message("NumOfSkellies: "+string(ds_list_size(currentSkeletons)));
			//do attack
			event_user(0);
		}else if(canAttack){
			//show_debug_message("attack default start: "+ string(ds_list_size(currentSkeletons)));
			instance_create_layer(irandom_range(10356,14013),irandom_range(2379,2941),"Instances",obj_lichMagicAttack);
			canAttack = false;
			alarm[0] = attackCooldown * room_speed;
			sprite_index = spr_lichAttack;
			//show_debug_message("attack default end: "+ string(ds_list_size(currentSkeletons)));
		}
	
	
	}

}else{
	
	sprite_index = spr_lichDeath;
	with(obj_skeleton){
		enemyHealth = 0;
	}
	//instance_destroy();
}