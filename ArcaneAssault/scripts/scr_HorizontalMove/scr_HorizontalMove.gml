
function scr_HorizontalMove(amount,obj){
	
	if(0<=obj.x+amount+obj.sprite_xoffset and (obj.x+amount+(obj.sprite_width-obj.sprite_xoffset) <= room_width or !instance_exists(obj_enemy))){
		//only move if obj can stay on screen, but if no enemies left, obj can walk off right side.
		
		//can only move if move not make obj collide w/ wallCollision
		if(!instance_place(obj.x+amount,obj.y,obj_WallCollision)){
			
			obj.x+=amount;
		}
	}
}