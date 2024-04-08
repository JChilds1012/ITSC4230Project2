health -= other.damage;

if (health < 0) {
	instance_destroy(self)
}