if instance_exists(obj_player) or !instance_exists(obj_goblin){
	var playerInstance = instance_find(obj_player, 0);
	playerInstance.speed = 0;
}