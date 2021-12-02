
function scr_VerticalMove(amount, obj){
	
	
	floorLowerBorder = global.lowerBorder;
	floorUpperBorder = room_height;
	
	newY = obj.y + global.projectionScalar * amount
	if(floorLowerBorder <= newY and newY+(obj.sprite_height-sprite_yoffset) <= floorUpperBorder){
		obj.y = newY;
	}
	
	
}