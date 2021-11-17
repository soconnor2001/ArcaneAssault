/// @description Insert description here
// You can write your code in this editor

seeking = !scr_isOutsideScreen(id,sprite_xoffset,sprite_yoffset,sprite_height,sprite_width);

//show_debug_message(seeking)

if(seeking and instance_exists(obj_player)){
	
	scr_moveToward(id,obj_player,enemySpeed);
	
}

