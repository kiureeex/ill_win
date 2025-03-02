var move_speed = 2;
var dir_x = 0;
var dir_y = 0;

if (keyboard_check(vk_left)) {
    dir_x = -1;
}
else if (keyboard_check(vk_right)) {
    dir_x = 1;
}
else {
    dir_x = 0;
}

if (keyboard_check(vk_up)) {
    dir_y = -1;
}
else if (keyboard_check(vk_down)) {
    dir_y = 1;
}
else {
    dir_y = 0;
}

x += dir_x * move_speed;
y += dir_y * move_speed;

// Alterar o sprite baseado na direção em que o personagem estava se movendo
if (dir_x != 0 || dir_y != 0) {
    if (dir_x == 1) {
        sprite_index = spr_player_walk_right;
    }
    else if (dir_x == -1) {
        sprite_index = spr_player_walk_left;
    }
    else if (dir_y == 1) {
        sprite_index = spr_player_walk_down;
    }
    else if (dir_y == -1) {
        sprite_index = spr_player_walk_up;
    }
}
else {

    if (dir_x == 1) {
        sprite_index = spr_player_idle_right;
    }
    else if (dir_x == -1) {
        sprite_index = spr_player_idle_left;
    }
    else if (dir_y == 1) {
        sprite_index = spr_player_idle_down;
    }
    else if (dir_y == -1) {
        sprite_index = spr_player_idle_up;
    }
}