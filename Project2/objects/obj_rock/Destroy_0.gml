if !instance_exists(obj_hole) or !instance_exists(obj_rockCoal) or !instance_exists(obj_rockCrystal) or !instance_exists(obj_rockOre) and (room != Room9) {
	var baseChance = 10
	var decreasePerLevel = global.roomLevel * -1
	var currentChance = max(baseChance - decreasePerLevel, 1)
	var rando = random_range(1, 100)
	if (rando <= currentChance) {
        instance_create_layer(x, y, "Instances", obj_hole)
    }
}

score += 1