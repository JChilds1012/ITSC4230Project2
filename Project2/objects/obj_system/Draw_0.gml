if instance_exists(obj_player) {
	draw_healthbar(32,16,400,70,global.playerHealth,c_black,c_red,c_lime,0,true,true)
} else {
    var text_width = string_width("To be continued... Press U to return to title screen");
draw_text(room_width / 2 - text_width / 2, room_height / 3, "To be continued... Press U to return to title screen");

}
draw_set_font(fnt_score);
draw_text(32, 75, "Score: " + string(score))

	