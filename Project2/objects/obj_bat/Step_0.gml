event_inherited();

if (instance_exists(obj_player)) {
	if (!is_pursuing_player) {
		var next_x = circle_center_x + cos(angle) * radius;
		var next_y = circle_center_y + sin(angle) * radius;
		if (distance_to_point(next_x, next_y) > abs(norm_speed)) {
			var dir = point_direction(x, y, next_x, next_y);

			// Move towards the target
			x += lengthdir_x(abs(norm_speed), dir);
			y += lengthdir_y(abs(norm_speed), dir);
		} else {
			speed = norm_speed / 100;
		    angle += speed;
		    x = circle_center_x + cos(angle) * radius;
		    y = circle_center_y + sin(angle) * radius;
		}
	} else {
		circle_center_x = x;
		circle_center_y = y;
	}
}