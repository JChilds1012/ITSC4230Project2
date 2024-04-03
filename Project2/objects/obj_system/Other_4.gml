var rocks = 15;

for (var i = 0; i < rocks; i++) {
    var x_Spot = random_range(30, room_width - 30); 
    var y_Spot = random_range(30, room_height - 30);

    instance_create_layer(x_Spot, y_Spot, "Instances", obj_rock);
}

