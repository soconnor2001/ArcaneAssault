/// @description do Attack
// You can write your code in this editor



//randomly pick attack
attackNum = irandom_range(0,2);
//newSkeletons = noone; 
switch(attackNum){
	case 0:
	//show_debug_message("attack 1 start: "+ string(ds_list_size(currentSkeletons)));
		scr_bossSpawn(id,obj_skeleton,"ttt",1000,45);
	//show_debug_message("attack 1 end: "+ string(ds_list_size(currentSkeletons)));
		break;
	case 1:
	//show_debug_message("attack 2 start: "+ string(ds_list_size(currentSkeletons)));
		scr_bossSpawn(id,obj_skeleton,"tft",2000,22,1500);
		//show_debug_message("attack 2 end: "+ string(ds_list_size(currentSkeletons)));
		break;
	default:
	//show_debug_message("attack 3 start: "+ string(ds_list_size(currentSkeletons)));
		instance_create_layer(irandom_range(10356,14013),irandom_range(2379,2941),"Instances",obj_lichMagicAttack);
		//show_debug_message("attack 3 end: "+ string(ds_list_size(currentSkeletons)));
		break;
}


//if did skeleton attack
//if(newSkeletons != noone){
			
			
//	//add newSkeletons to currentSkeletons
//	for(i = 0; i < ds_list_size(newSkeletons);i++){
//		ds_list_add(currentSkeletons,ds_list_find_value(newSkeletons,i));
//	}
//}

	//start attackCooldown
	canAttack = false;
	alarm[0] = attackCooldown * room_speed;
			

