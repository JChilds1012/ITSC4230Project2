if instance_exists(obj_player) {
		
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

	if (distance_to_player < 200) {
		speed = 0;
		hspeed = 0;
		is_pursuing_player = true;
		var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
		x += lengthdir_x(2.5, direction_to_player);
		y += lengthdir_y(2.5, direction_to_player);
	} else {
		is_pursuing_player = false;
	}
	if (!is_pursuing_player) {
		if (y <= 50 || y >= 900) {
			image_yscale = image_yscale * -1
		    v_direction *= -1
		}
		vspeed = norm_speed * v_direction
	}
}

if hit_count >= 7 {
	instance_destroy()
}