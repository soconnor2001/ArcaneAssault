/// @description add self to current obj_playerAttack if just created
// You can write your code in this editor


pAttack = instance_place(x,y,obj_playerAttack);
//show_debug_message(pAttack);
with(pAttack){
	
	if(object_index != obj_enemyAttack){
		show_debug_message("added");
		if(ds_exists(attacked,ds_type_list)){
			
			ds_list_add(attacked,other);
			other.added = true;
		}
	}
}

if(canAttack){
	added =true;
}