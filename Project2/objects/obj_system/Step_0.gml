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

if keyboard_check_pressed(ord("L")){
	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_hole);
} 

if keyboard_check_pressed(ord("O")){
	global.bossHealth -= 30
} 

if keyboard_check_pressed(ord("N")){
	global.worth += 100
} 

if keyboard_check_pressed(ord("M")){
	instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_boss);
} 

if !instance_exists(obj_boss){
	audio_stop_sound(snd_bossFight)
}

if audio_is_playing(snd_bossFight){
	audio_stop_sound(snd_background)
}