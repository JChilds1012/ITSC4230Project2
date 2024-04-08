if instance_exists(obj_player) {
	var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y)

	if (distance_to_player < 200) {
		speed = 0
		normSpeed = 0
		pursuing_player = true
	    var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y)
	    x += lengthdir_x(2, direction_to_player)
	    y += lengthdir_y(2, direction_to_player)
	} else {
		pursuing_player = false
	}

	if !pursuing_player {
		normSpeed = 1.5
	}
	
	if speed = 0 {
		vspeed = normSpeed
	}
}

if timesHit > 2 {
	instance_destroy(self)
}

if (y < 50 || y > 900) {
	image_xscale = image_xscale * -1
    vspeed = vspeed * -1
}