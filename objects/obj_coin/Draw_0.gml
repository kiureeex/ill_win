var coin_x = room_width - 40;
var coin_y = 10;

if (sprite_index != -1) {
    draw_sprite_ext(sprite_index, 0, coin_x, coin_y, 0.8, 0.8, 0, c_white, 1);
}

draw_set_halign(fa_center);
draw_set_color(c_white);

draw_text(coin_x, coin_y + 13, "0");