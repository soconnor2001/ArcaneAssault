// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_moveToward(thisObj,targetObj,maxSpeed){
	
	deltaX =  clamp(targetObj.x-x, -maxSpeed,maxSpeed);
	deltaY = clamp(targetObj.y-y, -maxSpeed * global.projectionScalar, maxSpeed * global.projectionScalar);
	
	
	if(deltaX > 0){
		//face right
		thisObj.image_xscale = 1;
	}else if(deltaX < 0){
		//face left
		thisObj.image_xscale = -1;
	}
	
	thisObj.x += deltaX;
	thisObj.y += deltaY;
	
	thisObj.depth = -thisObj.y;
	
}