direction = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)
image_angle = direction

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
		instance_create_layer(x,y,"instances",obj_pick)
	}