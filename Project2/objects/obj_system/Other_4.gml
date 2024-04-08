var baseRocks = 5
var rocksPerLevel = 2
var totalRocks = baseRocks + (global.roomLevel * -1) * rocksPerLevel
for (var i = 0; i < totalRocks; i++) {
    var x_Spot = random_range(30, room_width - 30)
    var y_Spot = random_range(30, room_height - 30)

    instance_create_layer(x_Spot, y_Spot, "Instances", obj_rock)
}
for (var i = 0; i < totalRocks; i++) {
    var x_Spot = random_range(30, room_width - 30)
    var y_Spot = random_range(30, room_height - 30)

    instance_create_layer(x_Spot, y_Spot, "Instances", obj_rockCoal)
}
for (var i = 0; i < totalRocks; i++) {
    var x_Spot = random_range(30, room_width - 30)
    var y_Spot = random_range(30, room_height - 30)

    instance_create_layer(x_Spot, y_Spot, "Instances", obj_rockCrystal)
}
for (var i = 0; i < totalRocks; i++) {
    var x_Spot = random_range(30, room_width - 30)
    var y_Spot = random_range(30, room_height - 30)

    instance_create_layer(x_Spot, y_Spot, "Instances", obj_rockOre)
}