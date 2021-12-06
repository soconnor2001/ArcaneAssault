/// @description go to player if in new room
// You can write your code in this editor


if(instance_exists(obj_player) and awake){
				playerObj = instance_find(obj_player,0);
				selfIndex = ds_list_find_index(playerObj.currentCompanions,id);
				//show_debug_message(selfIndex);
				x=0;
				if(selfIndex <= 0){
					scr_moveToward(id,obj_player,infinity);
				}else{
					scr_moveToward(id,ds_list_find_value(playerObj.currentCompanions,selfIndex-1),infinity)
				}
			}
			
			
if(room_get_name(room)=="rm_Win" or room_get_name(room)=="rm_Loose" or room_get_name(room)=="rm_MainMenu"){
	instance_destroy();
	
}