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
}