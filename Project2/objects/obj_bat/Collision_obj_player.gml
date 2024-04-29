

if (self.can_hit) {
	self.can_hit = false;
	alarm_set(0, self.hit_speed)
	inflict_damage(5)
	audio_play_sound(bat_attack,1, false)
}