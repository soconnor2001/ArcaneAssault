/// @description Insert description here
// You can write your code in this editor


if(attacking and ds_list_find_index(hitObjs,other) == -1){
	other.playerHealth -= damage;
	ds_list_add(hitObjs,other);
}
