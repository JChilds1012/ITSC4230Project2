/// @description Insert description here
// You can write your code in this editor

speed = 10; 
var dir = point_direction(x, y, other.x, other.y);
direction = dir; 
alarm_set(1, 5);
if (can_take_damage) {
	monster_health -= other.damage;
	can_take_damage = false;
	alarm_set(1, other.cooldown);
}

if (monster_health <= 0) {
	instance_destroy(self)
}