/// @description start hurting player and companion
// You can write your code in this editor



//start attack
sprite_index = spr_lichMagicAttack;
attacking = true;

//start timer to kill self
alarm[1] = attackSeconds*room_speed;
show_debug_message("");