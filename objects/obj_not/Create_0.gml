texto_notificacao = "Go to sleep, you need to rest...";  
exclamacao = "!";  
alpha_notificacao = 1;  
tempo_exibicao = 380;

largura_caixa = 400;
altura_caixa = 60;

x_notificacao = 0;
y_notificacao = 0;

x_notificacao = clamp(x_notificacao, 0, 640 - largura_caixa);
y_notificacao = clamp(y_notificacao, 0, 480 - altura_caixa);

letras_exibidas = 0;
tempo_entre_letras = 6;
tempo_espera_entre_letras = 0;

mover = false;
