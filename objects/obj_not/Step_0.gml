if (instance_exists(obj_player) && obj_player.ja_movimentou) {
    mover = true;
}

if (mover) {
    tempo_exibicao -= 1;

    tempo_espera_entre_letras -= 1;
    if (tempo_espera_entre_letras <= 0) {
        if (letras_exibidas < string_length(texto_notificacao)) {
            letras_exibidas += 1;
            tempo_espera_entre_letras = tempo_entre_letras;
        }
    }

    if (letras_exibidas == string_length(texto_notificacao) && tempo_exibicao <= 0) {
        alpha_notificacao -= 0.05;
        if (alpha_notificacao <= 0) {
            instance_destroy();
        }
    }
}
