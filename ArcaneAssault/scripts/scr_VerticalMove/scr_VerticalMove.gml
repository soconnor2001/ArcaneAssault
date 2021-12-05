
function scr_VerticalMove(amount, obj){
	
	
	floorLowerBorder = global.lowerBorder;
	floorUpperBorder = room_height;
	
	onBossRoomFloor = place_meeting(obj.x,obj.y,obj_bossFloor);
	
	newY = obj.y + global.projectionScalar * amount
	if((onBossRoomFloor or floorLowerBorder <= newY) and newY <= floorUpperBorder){
		obj.y = newY;
	}
	
	
}