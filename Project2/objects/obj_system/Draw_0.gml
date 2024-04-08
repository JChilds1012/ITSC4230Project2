if instance_exists(obj_player) {
	draw_healthbar(32,16,400,70,global.playerHealth,c_black,c_red,c_lime,0,true,true)
} else {
    draw_text(room_width / 2 - 200, room_height / 2,"Press U return to title screen")
}
draw_set_font(fnt_inGame);
draw_text(32, 75, "Score: " + string(score))