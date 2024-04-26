if instance_exists(obj_player) {
		
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y)

	if (distance_to_player < 200) {
		var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y)
		image_angle = point_direction(obj_snake.x, obj_snake.y, obj_player.x, obj_player.y)
	}
}

if hit_count >= 3 {
	instance_destroy()
}