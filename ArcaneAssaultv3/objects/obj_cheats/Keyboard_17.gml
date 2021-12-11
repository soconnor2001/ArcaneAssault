/// @description cheats
// You can write your code in this editor


if(keyboard_check_pressed(ord("N"))){
	//go to next room
	room_goto_next();
}

if(keyboard_check_pressed(ord("H"))){
	//full health
	obj_player.playerHealth=obj_player.maxHealth;
}

if(keyboard_check_pressed(ord("M"))){
	//full mana
	obj_player.mana=obj_player.maxMana;
}

if(keyboard_check_pressed(ord("K"))){
	//Kill onscreenEnemies
	
	with(obj_enemy){
		if(!scr_isOutsideScreen(id)){
			instance_destroy();
		}
	}
}