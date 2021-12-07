/// @description do Attack
// You can write your code in this editor



//randomly pick attack
attackNum = irandom_range(0,2);
newSkeletons = noone; 
switch(attackNum){
	case 0:
		newSkeletons = scr_bossSpawn(id,obj_skeleton,"ttt",1000);
		break;
	case 1:
		newSkeletons = scr_bossSpawn(id,obj_skeleton,"tft",300,45,1500);
		break;
	default:
		instance_create_layer(12500,2700,"Instances",obj_lichMagicAttack);
		break;
}


//if did skeleton attack
if(newSkeletons != noone){
			
			
	//add newSkeletons to currentSkeletons
	for(i = 0; i < ds_list_size(newSkeletons);i++){
		ds_list_add(currentSkeletons,ds_list_find_value(newSkeletons,i));
	}
}

	//start attackCooldown
	canAttack = false;
	alarm[0] = attackCooldown * room_speed
			

