/// @description Insert description here
// You can write your code in this editor


draw_self();

if(instance_exists(attackObj)){
	//draw attack at correct height
	
	draw_sprite_ext(spr_attackVisual,0,x,y-200,image_xscale,1,0,noone,1);
}