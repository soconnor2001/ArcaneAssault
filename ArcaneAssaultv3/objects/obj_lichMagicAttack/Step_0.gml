/// @description Insert description here
// You can write your code in this editor

if(83<=image_index and image_index <85){
	image_index = 85;
}
if(!attacking and attackStartFrame <= image_index and image_index<=attackEndFrame){
	attacking = true;
}
if(attacking and image_index >attackEndFrame){
	attacking = false;
}
