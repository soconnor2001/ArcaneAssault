
function scr_VerticalMove(amount, obj){
	
	
	floorLowerBorder = global.lowerBorder;
	floorUpperBorder = room_height;
	
	onBossRoomFloor = place_meeting(obj.x,obj.y,obj_bossFloor);
	
	newY = obj.y + global.projectionScalar * amount;
	
	//only move if player stays in floor space
	if((onBossRoomFloor or floorLowerBorder <= newY) and newY <= floorUpperBorder){
		
		//can only move if move not make obj collide w/ wallCollision
		if(!instance_place(obj.x,newY,obj_WallCollision)){
			obj.y = newY;
		}
	}
	
	
}