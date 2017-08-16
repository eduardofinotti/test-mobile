#language: pt
@localizacao @funcionalidade_basica
Funcionalidade: Encontrar localização
  Como oficial de justiça, 
  Eu quero identificar minha localização para poder verificá-la antes que seja informada à central de mandados
  
  Cenário: Acessar aplicação com GPS desativado
    Dado que o GPS do dispositivo está desabilitado
    Quando realizar o login na aplicação
    Então deve ser exibida uma mensagem pedindo para o usuário habilitar o GPS antes de prosseguir
  
  @falta
  Cenário: Verificar alerta pedindo permissao de acesso a localização
    Dado que o usuário realizou o login na aplicação
    Então deve ser apresentada alerta pedindo autorização de acesso à localização do usuário

  Cenário: Acessar aplicação sem permissão de acesso á localização
    Dado que o usuário logado tenha recusado a autorização de acesso a localização no login
    Então deve ser apresentada uma tela pedindo autorização de acesso à localização do usuário
  
  @atual
  Cenário: Oficial de justiça realiza localização para enviar
    Dado GPS do dispositivo móvel está habilitado 
    Quando realizar o login na aplicação permitindo acesso à localização do dispositivo móvel
    E navegar ate a aba de Localização
    E o oficial de justiça pressionar o botão Estou aqui
    Então deve ser apresentada a tela com o endereço onde Oficial de justiça se encontra 
    E deve apresentar o botão Enviar localização habilitado