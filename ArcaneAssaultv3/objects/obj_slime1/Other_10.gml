/// @description kill self and split
// You can write your code in this editor

childSlimeSeparation = 50;

instance_create_layer(x-childSlimeSeparation,y,"Instances",obj_slime2);
instance_create_layer(x+childSlimeSeparation,y,"Instances",obj_slime2);

instance_destroy();