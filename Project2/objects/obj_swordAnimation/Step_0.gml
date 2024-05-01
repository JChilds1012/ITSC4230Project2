if instance_exists(obj_player) {
	x = obj_player.x
	y = obj_player.y
}

image_angle = point_direction(obj_swordAnimation.x, obj_swordAnimation.y, mouse_x, mouse_y)

sprite_index = global.currentWeaponAnimation