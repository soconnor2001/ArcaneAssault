/// @description Insert description here
// You can write your code in this editor

//if playing wrong music
if((musicToPlay != snd_MainMenu_music) and audio_is_playing(snd_MainMenu_music)){
	audio_stop_sound(snd_MainMenu_music);
}
if((musicToPlay != snd_lvl1_music) and audio_is_playing(snd_lvl1_music)){
	audio_stop_sound(snd_lvl1_music);
}
if((musicToPlay != snd_lvl2_music) and audio_is_playing(snd_lvl2_music)){
	audio_stop_sound(snd_lvl2_music);
}


if(musicToPlay != 0 and !audio_is_playing(musicToPlay)){
	audio_play_sound(musicToPlay,10,true);
}
