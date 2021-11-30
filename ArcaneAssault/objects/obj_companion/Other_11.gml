/// @description kill self
// You can write your code in this editor

if(instance_exists(obj_player)){
	playerObj = instance_find(obj_player,0);
	with(playerObj){
		ds_list_delete(currentCompanions,ds_list_find_index(currentCompanions,other));
	}
}
instance_destroy();