/// @description Insert description here
// You can write your code in this editor


//player health

pHealthW = view_get_wport(view_camera[0])*(3/8.0) - screenMargins;
pHealthH = 2*screenMargins;

draw_healthbar(screenMargins,screenMargins,pHealthW+screenMargins,pHealthH+screenMargins,(obj_player.playerHealth/obj_player.maxHealth)*100,
	c_black,c_red,c_green,0,true,true);
	
	
//player Mana

pManaW = view_get_wport(view_camera[0])*(3/8.0) + screenMargins;
pManaH = pHealthH;

draw_healthbar(view_get_wport(view_camera[0])-pManaW-screenMargins,screenMargins,view_get_wport(view_camera[0])-screenMargins,pManaH+screenMargins,(obj_player.mana/obj_player.maxMana)*100,
	c_black,7637829, 16776960, 1,true,true); 
	//7637829 = light cyan
	// 16776960 = dark cyan

	
// draw healthbars for enemies on screen

with(obj_enemy){
	if(!scr_isOutsideScreen(id)){
		//draw enemy healthbar
		
		eHealthH = 15
		eHealthW = abs(sprite_width/2);
		draw_healthbar((x-camera_get_view_x(view_camera[0])-eHealthW/2)*(view_wport[0]/camera_get_view_width(view_camera[0])),
		((y-camera_get_view_y(view_camera[0]))-sprite_height-eHealthH - 5)*(view_hport[0]/camera_get_view_height(view_camera[0])),
		(x-camera_get_view_x(view_camera[0])+eHealthW/2)*(view_wport[0]/camera_get_view_width(view_camera[0])),
		((y-camera_get_view_y(view_camera[0]))-sprite_height-5)*(view_hport[0]/camera_get_view_height(view_camera[0])),
		(id.enemyHealth/id.maxHealth)*100,
			c_black,c_red,c_green,0,true,true);
		
		
	}
}

// draw healthbars for companions
with(obj_companion){
	if(awake){
		cHealthH = 15
		cHealthW = abs(sprite_width/2);
		draw_healthbar((x-camera_get_view_x(view_camera[0])-cHealthW/2)*(view_wport[0]/camera_get_view_width(view_camera[0])),
		((y-camera_get_view_y(view_camera[0]))-sprite_height-cHealthH - 5)*(view_hport[0]/camera_get_view_height(view_camera[0])),
		(x-camera_get_view_x(view_camera[0])+cHealthW/2)*(view_wport[0]/camera_get_view_width(view_camera[0])),
		((y-camera_get_view_y(view_camera[0]))-sprite_height-5)*(view_hport[0]/camera_get_view_height(view_camera[0])),
		(id.compHealth/id.maxHealth)*100,
			c_black,c_red,c_green,0,true,true);
	}
}



//draw boss healthbar if boss on screen


bHealthW = view_get_wport(view_camera[0])*-2 * screenMargins;
bHealthH = 100;

draw_healthbar(screenMargins, view_get_hport(view_camera[0])-screenMargins,bHealthW+screenMargins,bHealthH+screenMargins,(obj_player.playerHealth/obj_player.maxHealth)*100,
	c_black,c_red,c_green,0,true,true);