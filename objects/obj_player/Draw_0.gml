draw_self();
draw_set_color(c_white); 

if (message_shown) {
    var alpha = abs(sin(message_timer / 10));

    draw_set_color(c_yellow);
    draw_set_alpha(alpha);

    draw_text(100, 30, "Madeira coletada!");

    message_timer += 1;

    if (message_timer > 50) {
        message_shown = false; 
    }
}

draw_set_alpha(1);