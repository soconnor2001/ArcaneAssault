/// @description Insert description here
// You can write your code in this editor

depth = -(y-sprite_yoffset+sprite_height);

skull = instance_create_layer(x,y,"Instances",obj_skullComp);

skull.depth = id.depth-1

instance_destroy(self);