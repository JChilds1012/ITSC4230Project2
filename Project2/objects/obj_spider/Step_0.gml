if instance_exists(obj_player) {
		
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

	if (distance_to_player < 200) {
		speed = 0;
		hspeed = 0;
		is_pursuing_player = true;
		var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
		x += lengthdir_x(3, direction_to_player);
		y += lengthdir_y(3, direction_to_player);
	} else {
		is_pursuing_player = false;
	}
}
if (!is_pursuing_player) {
	if (x <= 50 || x >= 1850) {
	image_xscale = image_xscale * -1
    h_direction *= -1
	}
	hspeed = norm_speed * h_direction
}


