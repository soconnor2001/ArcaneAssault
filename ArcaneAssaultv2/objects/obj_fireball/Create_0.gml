/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	
	image_xscale = obj_player.image_xscale;
	if(image_xscale = 1){
		//player facing right
		direction = 0;
		speed = fireballSpeed;
	}else{
		direction = 180;
	}
	speed = fireballSpeed;
	depth = -y-1;
}