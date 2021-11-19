/// @description Insert description here
// You can write your code in this editor


//player health

pHealthW = view_get_wport(0)/2 - screenMargins;
pHealthH = 2*screenMargins;

draw_healthbar(screenMargins,screenMargins,pHealthW+screenMargins,pHealthH+screenMargins,(obj_player.playerHealth/obj_player.maxHealth)*100,
	c_black,c_red,c_green,0,true,true);
	
// draw healthbars for enemies on screen

with(obj_enemy){
	if(!scr_isOutsideScreen(id)){
		//draw enemy healthbar
		
		eHealthH = 15
		eHealthW = abs(sprite_width/2);
		draw_healthbar(x-camera_get_view_x(view_camera[0])-eHealthW/2,y-sprite_height-eHealthH - 5,x-camera_get_view_x(view_camera[0])+eHealthW/2,y-sprite_height-5,(id.enemyHealth/id.maxHealth)*100,
			c_black,c_red,c_green,0,true,true);
		
		
	}
}

// draw healthbars for companions
with(obj_companion){
	if(awake){
		cHealthH = 15
		cHealthW = abs(sprite_width/2);
		draw_healthbar(x-camera_get_view_x(view_camera[0])-cHealthW/2,y-sprite_height-cHealthH - 5,x-camera_get_view_x(view_camera[0])+cHealthW/2,y-sprite_height-5,(id.compHealth/id.maxHealth)*100,
			c_black,c_red,c_green,0,true,true);
	}
}

