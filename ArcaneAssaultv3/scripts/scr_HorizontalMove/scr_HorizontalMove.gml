
function scr_HorizontalMove(amount,obj){
	
	if(0<=obj.x+amount+obj.sprite_xoffset and (obj.x+amount+(obj.sprite_width-obj.sprite_xoffset) <= room_width or !instance_exists(obj_enemy))){
		//only move if obj can stay on screen, but if no enemies left, obj can walk off right side.
		
		//can only move if move not make obj collide w/ wallCollision or  not ( collide with boss floor if enemies still exist and boss off screen if boss exists)
		if(!instance_place(obj.x+amount,obj.y,obj_WallCollision) and 
			!(instance_place(obj.x+amount,obj.y,obj_bossFloor) and instance_number(obj_enemy)>0 and (instance_exists(obj_lichKing) and scr_isOutsideScreen(instance_find(obj_lichKing,0))))){
			
			obj.x+=amount;
		}
	}
}