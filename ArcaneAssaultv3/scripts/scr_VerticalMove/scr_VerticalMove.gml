
function scr_VerticalMove(amount, obj){
	
	
	floorLowerBorder = global.lowerBorder;
	floorUpperBorder = room_height;
	
	
	
	newY = obj.y + global.projectionScalar * amount;
	onBossRoomFloor = place_meeting(obj.x,newY,obj_bossFloor);
	
	//only move if player stays in floor space
	if(onBossRoomFloor or (floorLowerBorder <= newY and newY <= floorUpperBorder)){
		
		//can only move if move not make obj collide w/ wallCollision
		if(!instance_place(obj.x,newY,obj_WallCollision)){
			obj.y = newY;
		}
	}
	
	
}