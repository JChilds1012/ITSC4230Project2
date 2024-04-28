if keyboard_check_pressed(ord("U")) {
	game_restart()
}

if room != Room9 and room != RoomStore{
	if (!instance_exists(obj_hole) && instance_number(obj_rock) == 0 && instance_number(obj_rockCoal) == 0 && instance_number(obj_rockCrystal) == 0 && instance_number(obj_rockOre) == 0) {
	    instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_hole);
	}
}

if keyboard_check(ord("P")){
	global.playerHealth += 100000000000000000000000000000000
}

if keyboard_check(ord("L")){
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_hole);
} 