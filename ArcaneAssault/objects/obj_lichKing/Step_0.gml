/// @description 
// You can write your code in this editor

if(bossHealth > 0){
	

	if(!scr_isOutsideScreen(id)){
	
	
		//remove dead skeletons from currentSkeletons
		for(i = 0; i<ds_list_size(currentSkeletons);i++){
			if(!instance_exists(ds_list_find_value(currentSkeletons,i))){
				ds_list_delete(currentSkeletons,i);
				i--;
			}
		}
	
		show_debug_message(ds_list_size(currentSkeletons));
	
		if(ds_list_size(currentSkeletons)<=1 and canAttack){
			show_debug_message("NumOfSkellies: "+string(ds_list_size(currentSkeletons)));
			//do attack
			event_user(0);
		}else if(canAttack){
			instance_create_layer(12500,2700,"Instances",obj_lichMagicAttack);
			canAttack = false;
			alarm[0] = attackCooldown * room_speed;
		}
	
	
	}

}else{
	instance_destroy();
}