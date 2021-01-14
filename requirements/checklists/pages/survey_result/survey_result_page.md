# Survey Result Page

> ## Regras
01. Chamar o método de Obter Resultado da Enquete ao carregar a tela
02. Exibir loading ao receber evento de isLoading do presenter como true
03. Esconder loading ao receber evento de isLoading do presenter como false ou null
04. Exibir mensagem de erro e esconder a lista ao receber evento de surveyResult com erro
05. Chamar o método de Obter Resultado da Enquete ao clicar no botão de recarregar
06. Esconder mensagem de erro em caso de sucesso
07. Exibir a pergunta da enquete
08. Exibir as respostas da enquete
09. Exibir a porcentagem de cada resposta
10. Exibir o ícone desativado se não for a resposta do usuário
11. Exibir o ícone ativado se for a resposta do usuário
12. Carregar a imagem com a partir da URL correta, caso a resposta tenha imagem
13. Não renderizar imagem, caso a resposta não tenha imagem
14. Ir para tela de Login e limpar a navegação ao receber evento de sessionExpired como true
15. Chamar o método de Salvar Resultado da Enquete ao clicar em algum item da lista