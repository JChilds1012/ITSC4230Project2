if instance_exists(obj_player){
	var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y)
	x += lengthdir_x(1.5, direction_to_player)	
	y += lengthdir_y(1.5, direction_to_player)
}