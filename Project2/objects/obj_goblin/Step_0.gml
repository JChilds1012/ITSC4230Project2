if (instance_exists(obj_player)) {
    var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y)

    if (distance_to_player < 200) {
		speed = 0
        is_pursuing_player = true;
        var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y)
        x += lengthdir_x(2.7, direction_to_player)
        y += lengthdir_y(2.7, direction_to_player)
    } else {
        is_pursuing_player = false
    }
}

if (!is_pursuing_player) {
    if (alarm[0] <= 0) {
        direction = irandom(359)
        speed = 1.7
        alarm[0] = room_speed * 3
    }
	speed = 1.7
    var new_x = x + lengthdir_x(speed, direction)
    var new_y = y + lengthdir_y(speed, direction)

    if (new_x > sprite_width / 2 && new_x < room_width - sprite_width / 2 && new_y > sprite_height / 2 && new_y < room_height - sprite_height / 2) {
        x = new_x
        y = new_y
    } else {
        direction += 180
        direction = direction mod 359
        alarm[0] = 1
    }
}

if hit_count >= 3 {
	instance_destroy()
}