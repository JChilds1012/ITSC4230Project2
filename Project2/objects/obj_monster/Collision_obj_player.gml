var dir = point_direction(x, y, other.x, other.y)
var bounceDistance = 35
with(other) {
    x += lengthdir_x(bounceDistance, dir);
    y += lengthdir_y(bounceDistance, dir);
}

inflict_damage(35)