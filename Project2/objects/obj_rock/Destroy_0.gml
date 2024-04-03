if !instance_exists(obj_hole){
	var rando = random_range(1, 100);
	if (rando > 10) {
	    instance_create_layer(x, y, "Instances", obj_hole);
	}
}
if !object_exists(obj_rock){
	instance_create_layer(x,y,"Instances",obj_hole)
}