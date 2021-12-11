/// @description hurt boss
// You can write your code in this editor

if(ds_exists(attacked,ds_type_list) and ds_list_find_index(attacked,other) == -1){
	other.bossHealth -= damage;
	ds_list_add(attacked,other)
	scr_addMana(other.manaVal);
	if(!audio_is_playing(snd_wizardMelee)){
		audio_play_sound_at(snd_wizardMelee,other.x,other.y,0,50,100,1,false,0)
	}
}