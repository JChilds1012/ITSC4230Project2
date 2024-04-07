
if (!pursuing_player) {
	x += speed_x;

	// Check for room boundaries and reverse speed
	if (x <= 0 || x >= room_width - sprite_width) {
		speed_x = -speed_x;
	}
}


var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

if (distance_to_player < 200) { // Spider senses player within 200 pixels
    var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
    x += lengthdir_x(2, direction_to_player); // Move towards player
    y += lengthdir_y(2, direction_to_player);
	pursuing_player = true;
} else {
	pursuing_player = false;
}
