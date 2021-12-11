/// @description kill self
// You can write your code in this editor

if(instance_exists(obj_player)){
	playerObj = instance_find(obj_player,0);
	if(ds_exists(playerObj.currentCompanions,ds_type_list)){
		
		
		selfIndex = ds_list_find_index(playerObj.currentCompanions,id);
		while(selfIndex != -1){
			with(playerObj){
				ds_list_delete(currentCompanions,other.selfIndex);
				show_debug_message("list index: "+ string(ds_list_find_index(currentCompanions,other.selfIndex)));
			}
			selfIndex = ds_list_find_index(playerObj.currentCompanions,id);
		}
	}
}
//instance_destroy();
sprite_index = deathSprite;
audio_stop_sound(snd_walking);