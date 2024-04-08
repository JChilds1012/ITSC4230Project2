// Collision Event with obj_player in obj_monster

// Calculate the direction from the monster to the player
var dir = point_direction(x, y, other.x, other.y);

// Define the bounce back distance
var bounceDistance = 35; // This value can be adjusted

// Apply the bounce effect to the player
with(other) {
    x += lengthdir_x(bounceDistance, dir);
    y += lengthdir_y(bounceDistance, dir);
}

global.playerHealth = global.playerHealth - 35