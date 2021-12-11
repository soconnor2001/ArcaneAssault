/// @description kill self and leave bones and companion
// You can write your code in this editor




temp = instance_create_layer(x,y,"Instances",obj_skullComp);
temp.image_xscale = image_xscale;
instance_destroy();

