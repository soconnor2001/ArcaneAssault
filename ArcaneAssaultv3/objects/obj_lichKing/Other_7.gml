/// @description Insert description here
// You can write your code in this editor

if(sprite_index == spr_lichSummon or sprite_index == spr_lichAttack){
	sprite_index = spr_bossIdle;
}
if(sprite_index == spr_lichDeath){
	instance_destroy();
}