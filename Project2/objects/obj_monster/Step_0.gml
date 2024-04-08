if instance_exists(obj_player) {
	
	if (can_pursue) {
		
		var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

		if (distance_to_player < 200) {
			speed = 0;
			hspeed = 0;
			is_pursuing_player = true;
		    var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
		    x += lengthdir_x(pursuit_speed, direction_to_player);
		    y += lengthdir_y(pursuit_speed, direction_to_player);
		} else {
			is_pursuing_player = false;
		}
	}
}
