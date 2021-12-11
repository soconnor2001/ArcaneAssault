// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_bossSpawn(bossObj,objToSpawn,pattern, distance,angle = 90,length = 1000){
	
	
	x1 = bossObj.x+(bossObj.image_xscale*distance)+(cos(angle*(pi/180))*length/2);
	y1 = bossObj.y+600+(sin(angle*(pi/180))*length/2);
	
	x2 = bossObj.x+(bossObj.image_xscale*distance)-(cos(angle*(pi/180))*length/2);
	y2 = bossObj.y+600-(sin(angle*(pi/180))*length/2);
	
	scr_spawnObjInLine(x1,y1,x2,y2,objToSpawn,pattern)
	
}