/// @description Insert description here
// You can write your code in this editor

if(!awake){
	awake = true;
}else if(sprite_index == attackSprite){
	canAttack = true;
}else if(compHealth <= 0){
	instance_destroy();
}