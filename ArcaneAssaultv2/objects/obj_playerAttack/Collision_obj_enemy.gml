/// @description hurt enemy
// You can write your code in this editor

if(ds_exists(attacked,ds_type_list) and ds_list_find_index(attacked,other) == -1){
	other.enemyHealth -= damage;
	ds_list_add(attacked,other)
	scr_addMana(other.manaVal);
}