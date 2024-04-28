var dir = point_direction(x, y, other.x, other.y);

other.speed = 10;
other.direction = dir;

alarm_set(0,5);


if (self.can_hit) {
	self.can_hit = false;
	alarm_set(1, self.hit_speed);
	inflict_damage(15);
}