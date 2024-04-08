if instance_exists(obj_player) {
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y)

	if (distance_to_player < 200) {
		speed = 0
		normSpeed = 0
		pursuing_player = true
	    var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y)
	    x += lengthdir_x(3, direction_to_player)
	    y += lengthdir_y(3, direction_to_player)
	} else {
		pursuing_player = false
	}

	if !pursuing_player {
		normSpeed = 2.5
	}
	
	if speed = 0 {
		hspeed = normSpeed
	}
}

if timesHit > 1 {
	instance_destroy(self)
}

if (x <= 50 || x >= 1850) {
	image_xscale = image_xscale * -1
    hspeed = hspeed * -1
}