/// @description go to player start or die if end
// You can write your code in this editor


if(instance_exists(obj_playerStart)){
	startObj = instance_find(obj_playerStart,0);
	x=startObj.x;
	y=startObj.y;
}

if(room_get_name(room)=="rm_Win" or room_get_name(room)=="rm_Loose" or room_get_name(room)=="rm_MainMenu"){
	instance_destroy();
	
}