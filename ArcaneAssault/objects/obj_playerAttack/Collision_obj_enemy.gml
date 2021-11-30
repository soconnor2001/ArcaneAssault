/// @description kill enemy
// You can write your code in this editor

if(!attacked){
	other.enemyHealth -= damage;
	attacked = true;
	scr_addMana(other.manaVal);
}