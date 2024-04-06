if !instance_exists(obj_hole){
	var baseChance = 45
	var decreasePerLevel = global.roomLevel - 15
	var currentChance = max(baseChance - decreasePerLevel, 1)
	var rando = random_range(1, 100)
	if (rando <= currentChance) {
        instance_create_layer(x, y, "Instances", obj_hole)
    }
	if instance_number(obj_rock) == 0 {
		instance_create_layer(x, y, "Instances", obj_hole);
	}
}
