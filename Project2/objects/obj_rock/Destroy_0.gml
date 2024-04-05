if !instance_exists(obj_hole){
	var baseChance = 55
	var decreasePerLevel = global.roomLevel * 7
	var currentChance = max(baseChance - decreasePerLevel, 1)
	var rando = random_range(1, 100)
	if (rando <= currentChance) {
        instance_create_layer(x, y, "Instances", obj_hole)
    }
}
if (instance_number(obj_rock) == 0 and !instance_exists(obj_hole)) {
    instance_create_layer(x, y, "Instances", obj_hole);
}