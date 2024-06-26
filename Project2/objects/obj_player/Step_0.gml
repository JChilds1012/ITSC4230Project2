image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)

if keyboard_check(ord("W")){
	y += -3
}
if keyboard_check(ord("A")){
	x += -3
}
if keyboard_check(ord("S")){
	y += 3
}
if keyboard_check(ord("D")){
	x += 3
}

if room == RoomStore {
	if keyboard_check(ord("W")){
	y += -5
}
if keyboard_check(ord("A")){
	x += -5
}
if keyboard_check(ord("S")){
	y += 5
}
if keyboard_check(ord("D")){
	x += 5
}
}

x = clamp(x, sprite_width/5, room_width-sprite_width/5)
y = clamp(y, sprite_width/5, room_height-sprite_height/5)



if (pick_cooldown > 0) {
    pick_cooldown -= 1;
}
if (!instance_exists(obj_pickAnimation) and pick_cooldown <= 0 and mouse_check_button_pressed(mb_right)) {
    instance_create_layer(x, y, "instances", global.currentTool)
    audio_play_sound(snd_swing, 1, false)
	//instance_create_layer(x, y, "instances", global.currentToolAnimation)
    pick_cooldown = 20
}
	
if (attack_cooldown > 0) {
    attack_cooldown -= 1;
}
if (!instance_exists(obj_swordAnimation) and attack_cooldown <= 0 and mouse_check_button_pressed(mb_left)) {
    instance_create_layer(x, y, "instances", global.currentWeapon)
    audio_play_sound(snd_swing, 1, false)
    //instance_create_layer(x, y, "instances", global.currentWeaponAnimation)
    attack_cooldown = 20
}

if instance_exists(global.currentTool) or instance_exists(global.currentWeapon){
	obj_player.speed = 0
}

if (place_meeting(x, y, obj_hole) and keyboard_check_pressed(ord("F"))) {
    room_goto_next()
	global.roomLevel += 1
}

if (place_meeting(x, y, obj_ladder) and keyboard_check_pressed(ord("G"))) {
    room_goto_previous()
	global.roomLevel -= 1
}

if (place_meeting(x, y, obj_swordUpgradeDisplay) and keyboard_check_pressed(ord("Z")) and global.worth >= 100) {
	global.currentWeapon = obj_swordUpgrade
	global.currentWeaponAnimation = spr_sword_metal
    audio_play_sound(snd_purchase, 1, false)
	global.worth -= 100
	instance_destroy(obj_swordUpgradeDisplay)
}

if (place_meeting(x, y, obj_swordUpgradeDisplay2) and keyboard_check_pressed(ord("Z")) and global.worth >= 200) {
	global.currentWeapon = obj_swordUpgrade2
	global.currentWeaponAnimation = spr_sword_ancient
    audio_play_sound(snd_purchase, 1, false)
	global.worth -= 200
	instance_destroy(obj_swordUpgradeDisplay2)
}

if (place_meeting(x, y, obj_pickUpgradeDisplay2) and keyboard_check_pressed(ord("Z")) and global.worth >= 200) {
	global.currentTool = obj_pickUpgrade2
	global.currentToolAnimation = spr_pickaxe_metal
    audio_play_sound(snd_purchase, 1, false)
	global.worth -= 200
	instance_destroy(obj_pickUpgradeDisplay2)
}

if (place_meeting(x, y, obj_pickUpgradeDisplay) and keyboard_check_pressed(ord("Z")) and global.worth >= 100) {
	global.currentTool = obj_pickUpgrade
	global.currentToolAnimation = spr_pickaxe_ancient
    audio_play_sound(snd_purchase, 1, false)
	global.worth -= 100
	instance_destroy(obj_pickUpgradeDisplay)
}