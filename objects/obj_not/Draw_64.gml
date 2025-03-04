if (mover) {
    draw_set_alpha(alpha_notificacao);
    draw_set_color(c_black);
    draw_rectangle(x_notificacao, y_notificacao, x_notificacao + largura_caixa, y_notificacao + altura_caixa, false);

    draw_set_color(c_white);

    var largura_texto = string_width(texto_notificacao);

    var pos_x_texto = x_notificacao + (largura_caixa - largura_texto) + 60;
    var pos_y_texto = y_notificacao + (altura_caixa - string_height(texto_notificacao)) / 2;

    var texto_para_exibir = string_copy(texto_notificacao, 1, letras_exibidas);
    draw_text(pos_x_texto, pos_y_texto, texto_para_exibir);
	
    var brilho = 0.5 + 0.5 * sin(current_time * 0.01);
    draw_set_color(c_yellow);
    draw_set_alpha(brilho);
    draw_text(x_notificacao + largura_caixa - 40, y_notificacao + 20, "!");

    draw_set_alpha(1);
}
