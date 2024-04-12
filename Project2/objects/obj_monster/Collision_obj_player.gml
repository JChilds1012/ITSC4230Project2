
var dir = point_direction(x, y, other.x, other.y);


other.speed = 10; 
other.direction = dir;

alarm_set(0, 5);


if (can_hit) {
	can_hit = false;
	alarm_set(2,hit_speed);
	inflict_damage(melee_damage);
}