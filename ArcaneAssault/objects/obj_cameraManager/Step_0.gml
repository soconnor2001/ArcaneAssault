/// @description Insert description here
// You can write your code in this editor


if(instance_exists(obj_player)){
	playerObj = instance_find(obj_player,0);
	
	with(playerObj){
		other.focus = instance_place(x,y,obj_camFocus);
		//show_debug_message("camfocus: "+string(other.focus));
		//show_debug_message("Real target: "+string(camera_get_view_target(view_camera[0]))+" "+string(id));
	}
	if(focus != noone){
		//move cam to watch camFocus
		if(target != focus){
			target = focus;
			camera_set_view_target(view_camera[0],noone);
			stepsRemaining =camMoveTime * room_speed;
		}
		if(stepsRemaining > 0){
			
		
	
			deltaX =  (target.x-camera_get_view_x(view_camera[0]))/stepsRemaining;
			deltaY = (target.y-camera_get_view_y(view_camera[0]))/stepsRemaining;
			
			
			
			deltaW = ((target.sprite_width)-camera_get_view_width(view_camera[0]))/stepsRemaining;
			deltaH = ((target.sprite_height)-camera_get_view_height(view_camera[0]))/stepsRemaining;
	
	
		
	
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+deltaX,
					camera_get_view_y(view_camera[0])+deltaY);
					
			camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])+deltaW,
					camera_get_view_height(view_camera[0])+deltaH);
		
	
			stepsRemaining--;
		}
		
	}else{
		//move to player
		if(target != playerObj and camera_get_view_target(view_camera[0]) != obj_player){
			target = playerObj;
			camera_set_view_target(view_camera[0],noone);
			stepsRemaining =camMoveTime * room_speed;
		}
		if(stepsRemaining > 0){
			
		
	
			deltaX = ((target.x-(camera_get_view_width(view_camera[0])/2))-camera_get_view_x(view_camera[0]))/stepsRemaining;
			deltaY = ((room_height-1084)-camera_get_view_y(view_camera[0]))/stepsRemaining;
			
			//imageW = (target.image_xscale*target.sprite_width);
			//imageH = (target.image_yscale*target.sprite_height);
			
			deltaW = ((1920)-camera_get_view_width(view_camera[0]))/stepsRemaining;
			deltaH = ((1084)-camera_get_view_height(view_camera[0]))/stepsRemaining;
	
	
		
	
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0])+deltaX,
					camera_get_view_y(view_camera[0])+deltaY);
					
			camera_set_view_size(view_camera[0],camera_get_view_width(view_camera[0])+deltaW,
					camera_get_view_height(view_camera[0])+deltaH);
		
	
			stepsRemaining--;
		}else if(stepsRemaining == 0){
			stepsRemaining = -1;
			camera_set_view_target(view_camera[0],obj_player);
		}
	}
	
	
	if(camera_get_view_target(view_camera[0])){
		//if following player
		
		
		//parallaxing
		if(camera_get_view_x(view_camera[0])!=lastCamX or
			camera_get_view_y(view_camera[0]) != lastCamY){
				
				
				bgId = layer_get_id("Background");
				// set BG x
				newX = layer_get_x(bgId)+global.BGscalar*(lastCamX - camera_get_view_x(view_camera[0]));
				//layer_x(bgId,lerp(0,camera_get_view_x(view_camera[0]),.5));
				layer_x(bgId,newX);
				
				
				// set BG Y
				newY = layer_get_y(bgId)+global.BGscalar*(lastCamY - camera_get_view_y(view_camera[0]));
				layer_y(bgId,newY);
				
				//show_debug_message("move bg "+string(newX)+" "+string(newY));
				//show_debug_message("layer x,y now: "+string(layer_get_x(bgId))+" "+ string(layer_get_y(bgId))+" "+string(bgId));
				
				lastCamX = camera_get_view_x(view_camera[0]);
				lastCamY = camera_get_view_y(view_camera[0]);
		}	
		
		//asymetric vertical border
		if(playerObj.y-camera_get_view_y(view_camera[0]) >= bottomCamBorder and playerObj.deltaY>0){
			//if character too low on screen, let cam follow
			//camera_set_view_border(view_camera[0],camera_get_view_border_x(view_camera[0]),camera_get_view_height(view_camera[0])-bottomCamBorder);
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),clamp(playerObj.y-bottomCamBorder,0,room_height-camera_get_view_height(view_camera[0])));
		}
		else if (playerObj.y-camera_get_view_y(view_camera[0]) < topCamBorder and playerObj.deltaY<0){
			//if character too high on screen, let cam follow
			//camera_set_view_border(view_camera[0],camera_get_view_border_x(view_camera[0]),min(playerObj.y-camera_get_view_y(view_camera[0])-1,topCamBorder));
			camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),clamp(playerObj.y-topCamBorder,0,room_height-camera_get_view_height(view_camera[0])));
		
		}
		else{
			//cam don't vertically follow
			//camera_set_view_border(view_camera[0],camera_get_view_border_x(view_camera[0]),10000000000000);
		}
		show_debug_message("borders: " + string(camera_get_view_border_y(view_camera[0])));
	}
}

