// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_moveToward(thisObj,targetObj,maxSpeed,targetDistance = 240){
	
	
	
	if(thisObj.x < targetObj.x-targetDistance){
		//then thisObj is to the left and needs to move right to the left side of target
		deltaX =  clamp(targetObj.x-240-x, -maxSpeed,maxSpeed);
	}else if(thisObj.x > targetObj.x+targetDistance){
		//then thisObj is to the right and needs to move left to the right side of target
		deltaX =  clamp(targetObj.x+240-x, -maxSpeed,maxSpeed);
	}else{
		//this is close enough to target
		deltaX = 0;
	}
	
	//deltaX =  clamp(min(targetObj.x+240-x,targetObj.x-240-x), -maxSpeed,maxSpeed);
	deltaY = clamp(targetObj.y-y, -maxSpeed * global.projectionScalar, maxSpeed * global.projectionScalar);
	
	
	if(thisObj.x < targetObj.x){
		//face right
		thisObj.image_xscale = 1;
	}else if(thisObj.x > targetObj.x){
		//face left
		thisObj.image_xscale = -1;
	}
	
	
	if(!instance_place(thisObj.x+deltaX,thisObj.y,obj_WallCollision)){
		
		thisObj.x += deltaX;
		
	}
	if(!instance_place(thisObj.x,thisObj.y+deltaY,obj_WallCollision)){
		thisObj.y += deltaY;
	}
	
	thisObj.depth = -thisObj.y;
	
}