if instance_exists(obj_player) {
	x = obj_player.x
	y = obj_player.y
}

direction = point_direction(obj_pick.x, obj_pick.y, mouse_x, mouse_y)
image_angle = direction