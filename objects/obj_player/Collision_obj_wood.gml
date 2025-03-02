obj_player.wood += 1;

message_shown = true;
message_timer = 0; 

with (other) {
    instance_destroy();
}