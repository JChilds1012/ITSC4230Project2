if instance_exists(obj_player) {
	x = obj_player.x
	y = obj_player.y
}

image_angle = point_direction(obj_pickAnimation.x, obj_pickAnimation.y, mouse_x, mouse_y)

image_index = global.currentToolAnimation