
function scr_VerticalMove(amount, obj){
	
	
	floorLowerBorder = global.lowerBorder;
	floorUpperBorder = room_height;
	
	newY = obj.y + global.projectionScalar * amount
	if(floorLowerBorder <= newY and newY <= floorUpperBorder){
		obj.y = newY;
	}
	
	
}