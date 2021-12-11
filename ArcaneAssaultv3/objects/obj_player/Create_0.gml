/// @description set up
// You can write your code in this editor

show_debug_message("made player");
canAttack = true
currentCompanions = ds_list_create();
attackObj=noone;

playerHealth = maxHealth;

mana = 0;

manaSummonCost = 5;

deltaX=0;
deltaY=0;

audio_listener_orientation(0,0,1,0,-1,0)