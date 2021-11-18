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
		
	}
}

// draw healthbars for companions