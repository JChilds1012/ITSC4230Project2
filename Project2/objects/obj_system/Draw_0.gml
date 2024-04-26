if instance_exists(obj_player) {
	draw_healthbar(32,16,400,70,global.playerHealth,c_black,c_red,c_lime,0,true,true)
} else {
    var text_width = string_width("To be continued... Press U to return to title screen")
	draw_set_font(fnt_score);
draw_text(room_width / 2 - text_width / 2, room_height / 3, "To be continued... Press U to return to title screen")

}
draw_set_font(fnt_score);
draw_text(32, 75, "Score: " + string(score))

draw_set_font(fnt_score);
draw_text(32, 115, "Coin: " + string(global.worth))

if room == RoomStore {
	draw_set_font(fnt_score)
	draw_text(864, 765, "Press Z to buy")
}

if instance_exists(obj_boss) {
	draw_set_font(fnt_score)
		draw_healthbar(room_width - 32,16, room_width - 700, 70,global.bossHealth,c_black,c_red,c_lime,1,true,true)

}