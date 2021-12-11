// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information



function scr_isOutsideScreen(thisObj,xOffset = undefined,yOffset = undefined,sprH = undefined,sprW = undefined){
	
	//show_debug_message(string(sprW)+" "+string(xOffset)+" "+string(abs(sprW)-abs(xOffset)));
	
	if(xOffset = undefined || yOffset == undefined || sprH == undefined || sprW == undefined){
		
		try{
			
			xOffset = thisObj.sprite_xoffset;
			yOffset = thisObj.sprite_yoffset;
			sprH = thisObj.sprite_height;
			sprW = thisObj.sprite_width;
			
		}catch(e){
			
			if(instance_exists(thisObj)){
				tempObj = thisObj;
			}
			else{
				tempObj = instance_create_layer(0,0,"Instances",thisObj.object_index);
			}
			xOffset = tempObj.sprite_xoffset;
			yOffset = tempObj.sprite_yoffset;
			sprH = tempObj.sprite_height;
			sprW = tempObj.sprite_width;
			if(tempObj != thisObj){
				instance_destroy(tempObj);
			}
		}
		
	}
	
	return ( !((camera_get_view_x(view_camera[0])<thisObj.x+(abs(sprW)-abs(xOffset)) and 
		thisObj.x-abs(xOffset)<(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))) and
		(camera_get_view_y(view_camera[0])<thisObj.y+(sprH-yOffset) and 
		thisObj.y-yOffset<(camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))));
			
		
			
}
