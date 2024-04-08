if (!pursuing_player) {
    angle += speed;
    x = circle_center_x + cos(angle) * radius;
    y = circle_center_y + sin(angle) * radius;
} else {
    var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
    x += lengthdir_x(2, direction_to_player);
    y += lengthdir_y(2, direction_to_player);
}
if (pursuing_player && instance_exists(obj_player) && point_distance(x, y, obj_player.x, obj_player.y) >= 200) {
    pursuing_player = false;
    circle_center_x = x;
    circle_center_y = y;
    angle = 0;
} else if (!pursuing_player && instance_exists(obj_player) && point_distance(x, y, obj_player.x, obj_player.y) < 200) {
    pursuing_player = true;
}
