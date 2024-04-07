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

x = clamp(x, sprite_width/5, room_width-sprite_width/5)
y = clamp(y, sprite_width/5, room_height-sprite_height/5)



if (mouse_check_button_pressed(1)) or (keyboard_check_pressed(ord("Z"))) {
		instance_create_layer(-10,-10,"instances",obj_pick)
	}

if instance_exists(obj_pick){
	obj_player.speed = 0
}
	
if (place_meeting(x, y, obj_hole) and keyboard_check_pressed(ord("F"))) {
    room_goto_next();
	global.roomLevel += 1;
}
