/// @description kill self
// You can write your code in this editor

if(instance_exists(obj_player)){
	playerObj = instance_find(obj_player,0);
	selfIndex = ds_list_find_index(playerObj.currentCompanions,id);
	with(playerObj){
		ds_list_delete(currentCompanions,other.selfIndex);
		show_debug_message("list index: "+string(ds_list_find_index(currentCompanions,other.selfIndex)));
	}
}
instance_destroy();