// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_addMana(amount){
	if(instance_exists(obj_player)){
		playerObj = instance_find(obj_player,0);
		playerObj.mana = min(playerObj.mana+amount,playerObj.maxMana); //prevents mana from being above max
	}
}