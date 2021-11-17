/// @description summon companion
// You can write your code in this editor

possibleCompanions = ds_list_create();

for(i = 0; i<instance_number(obj_companion);i++){
	possibleCompanion = instance_find(obj_companion,i);
	if(!scr_isOutsideScreen(possibleCompanion,possibleCompanion.sprite_xoffset,
		possibleCompanion.sprite_yoffset,possibleCompanion.sprite_height,possibleCompanion.sprite_width)){
			ds_list_add(possibleCompanions,possibleCompanion);
		}
}

if(ds_list_size(possibleCompanions)>0){	
	ds_list_shuffle(possibleCompanions);
	currentCompanion = ds_list_find_value(possibleCompanions,0);
	with(currentCompanion){
		event_user(0);
	}
	
}else{
	show_debug_message("no companion");
}