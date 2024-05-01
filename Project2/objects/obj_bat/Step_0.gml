if (instance_exists(obj_player)) {
    var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y)

    if (distance_to_player < 200) {
        if (!is_pursuing_player) {
            // Reset circle center upon starting pursuit if needed
            is_pursuing_player = true
        }
        var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y)
        x += lengthdir_x(3, direction_to_player)
        y += lengthdir_y(3, direction_to_player)
    } else {
        if (is_pursuing_player) {
            // Transition from pursuing to not pursuing
            is_pursuing_player = false
            // Update the circling center only when the state changes
            circle_center_x = x
            circle_center_y = y
            // Update angle for circling
            angle = point_direction(circle_center_x, circle_center_y, x, y)
        }
    }
}

if (!is_pursuing_player) {
    angle += 0.03
    x = circle_center_x + cos(angle) * radius
    y = circle_center_y + sin(angle) * radius
}

if hit_count >= 2 {
	instance_destroy()
}