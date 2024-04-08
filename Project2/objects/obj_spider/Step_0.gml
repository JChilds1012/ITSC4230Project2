/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!is_pursuing_player) {
	if (x <= 50 || x >= 1850) {
	image_xscale = image_xscale * -1
    h_direction *= -1
	}
	hspeed = norm_speed * h_direction
}


