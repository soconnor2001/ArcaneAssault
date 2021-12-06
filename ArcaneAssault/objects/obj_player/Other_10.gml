/// @description summon companion
// You can write your code in this editor

if(mana >= manaSummonCost){
	
	possibleCompanions = ds_list_create();

	for(i = 0; i<instance_number(obj_companion);i++){
		possibleCompanion = instance_find(obj_companion,i);
		if(!scr_isOutsideScreen(possibleCompanion,possibleCompanion.sprite_xoffset,
			possibleCompanion.sprite_yoffset,possibleCompanion.sprite_height,possibleCompanion.sprite_width)
			and !possibleCompanion.awake){
				ds_list_add(possibleCompanions,possibleCompanion);
			}
	}
	//show_debug_message(ds_list_size(possibleCompanions))
	if(ds_list_size(possibleCompanions)>0){	
		newCompanion = ds_list_find_value(possibleCompanions,irandom_range(0,ds_list_size(possibleCompanions)-1));
		with(newCompanion){
			event_user(0);
		}
		ds_list_add(currentCompanions,newCompanion);
		mana -= manaSummonCost; 
		canAttack = false;
		sprite_index = spr_playerMagicAttack;
	}else{
		//show_debug_message("no companion");
	}
}