/// @description 
// You can write your code in this editor

if(!scr_isOutsideScreen(id)){
	
	
	//remove dead skeletons from currentSkeletons
	for(i = 0; i<ds_list_size(currentSkeletons);i++){
		if(!instance_exists(ds_list_find_value(currentSkeletons,i))){
			ds_list_delete(currentSkeletons,i);
		}
	}
	
	
	
	if(ds_list_size(currentSkeletons)<=1 and canAttack){
		
		//do attack
		event_user(0);
	}
	
	
}