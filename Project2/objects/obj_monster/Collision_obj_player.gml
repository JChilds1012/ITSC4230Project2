var dir = point_direction(other.x, other.y, x, y)
var bounceDistance = 35
x += lengthdir_x(bounceDistance, dir);
y += lengthdir_y(bounceDistance, dir);
global.playerHealth = global.playerHealth - 35