// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawnObjInLine(x1,y1,x2,y2, objToSpawn, pattern = "t",layerName = "Instances"){
	
	
	
	
	
	
	
	
	objsCreated = ds_list_create();
	
	for(i = 1; i<string_length(pattern)+1;i++){
		if(string_char_at(pattern,i) == "t"){
			newObj = instance_create_layer(x1+(x2-x1)*(i/(string_length(pattern)+1)), y1+(y2-y1)*(i/(string_length(pattern)+1)),layerName,objToSpawn);
			ds_list_add(objsCreated,newObj);
			
		}
	}
	
	return objsCreated;
	
	
}