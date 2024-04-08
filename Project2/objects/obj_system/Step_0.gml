if keyboard_check_pressed(ord("U")) {
	game_restart()
}

if global.playerHealth <= 0 {
	instance_destroy(obj_player)
}

if (!instance_exists(obj_hole) && instance_number(obj_rock) == 0 && instance_number(obj_rockCoal) == 0 && instance_number(obj_rockCrystal) == 0 && instance_number(obj_rockOre) == 0) {
    instance_create_layer(x, y, "Instances", obj_hole);
}
