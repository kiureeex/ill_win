var move_speed = 1;
var dir_x = 0;
var dir_y = 0;

if (!variable_global_exists("last_direction")) {
    global.last_direction = "down"; 
}

var prev_last_direction = global.last_direction; 

if (keyboard_check(vk_left)) {
    dir_x = -1;
    global.last_direction = "left";
} else if (keyboard_check(vk_right)) {
    dir_x = 1;
    global.last_direction = "right";
} else {
    dir_x = 0;
}

if (keyboard_check(vk_up)) {
    dir_y = -1;
    global.last_direction = "up";
} else if (keyboard_check(vk_down)) {
    dir_y = 1;
    global.last_direction = "down";
} else {
    dir_y = 0;
}

if (dir_x == 0 && dir_y == 0) {
    global.last_direction = prev_last_direction;
}

x += dir_x * move_speed;
y += dir_y * move_speed;

if (dir_x != 0 || dir_y != 0) {
    image_speed = 1;
    if (dir_x == 1 && sprite_index != spr_player_walk_right) {
        sprite_index = spr_player_walk_right;
    } else if (dir_x == -1 && sprite_index != spr_player_walk_left) {
        sprite_index = spr_player_walk_left;
    } else if (dir_y == 1 && sprite_index != spr_player_walk_down) {
        sprite_index = spr_player_walk_down;
    } else if (dir_y == -1 && sprite_index != spr_player_walk_up) {
        sprite_index = spr_player_walk_up;
    }
} else {
    image_speed = 0; 

    if (global.last_direction == "left") {
        if (sprite_index != spr_player_idle_left) {
            sprite_index = spr_player_idle_left;
            image_index = 0;
        }
    } else if (global.last_direction == "right") {
        if (sprite_index != spr_player_idle_right) {
            sprite_index = spr_player_idle_right;
            image_index = 0;
        }
    } else if (global.last_direction == "down") {
        if (sprite_index != spr_player_idle_down) {
            sprite_index = spr_player_idle_down;
            image_index = 0;
        }
    } else if (global.last_direction == "up") {
        if (sprite_index != spr_player_idle_up) {
            sprite_index = spr_player_idle_up;
            image_index = 0;
        }
    }
}