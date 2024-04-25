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



if !instance_exists(obj_pickAnimation) and (mouse_check_button_pressed(mb_right)){
		instance_create_layer(-10,-10,"instances",obj_pick)
		instance_create_layer(-10,-10,"instances",obj_pickAnimation)
	}
if !instance_exists(obj_swordAnimation) and (mouse_check_button_pressed(mb_left)){
		instance_create_layer(-10,-10,"instances",obj_sword)
		instance_create_layer(-10,-10,"instances",obj_swordAnimation)
	}

if instance_exists(obj_pick){
	obj_player.speed = 0
}

if instance_exists(obj_sword){
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
