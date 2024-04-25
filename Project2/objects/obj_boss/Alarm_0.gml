if instance_exists(obj_player){
	if instance_exists(obj_boss){
		var playerInstance = instance_find(obj_player, 0)
		playerInstance.speed = 0
	}
}