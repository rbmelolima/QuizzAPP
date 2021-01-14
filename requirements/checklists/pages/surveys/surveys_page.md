# Surveys Page

> ## Regras
01. Chamar o método de Listar Enquetes ao carregar a tela
02. Exibir loading ao receber evento de isLoading do presenter como true
03. Esconder loading ao receber evento de isLoading do presenter como false ou null
04. Exibir mensagem de erro e esconder a lista ao receber evento de surveysData com erro
05. Esconder mensagem de erro e exibir a lista ao receber evento de surveysData com dados
06. Mostrar a data e pergunta da enquete baseado no modelo
07. Mostrar em vermelho as enquetes não respondidas e em verde as respondidas pelo usuário
08. Chamar o método de Listar Enquetes ao clicar no botão de recarregar
09. Ir para a tela de resultado da enquete ao clicar em alguma enquete
10. Ir para tela de Login e limpar a navegação ao receber evento de sessionExpired como true