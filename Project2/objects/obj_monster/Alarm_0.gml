/// @description Insert description here
// You can write your code in this editor

// end bounce

if instance_exists(obj_player) {
	var playerInstance = instance_find(obj_player, 0);
	playerInstance.speed = 0;
}