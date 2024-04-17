
var dir = point_direction(x, y, other.x, other.y);


other.speed = 10; 
other.direction = dir;

alarm_set(0, 5);

inflict_damage(melee_damage);