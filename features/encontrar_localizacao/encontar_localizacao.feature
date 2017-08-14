#language: pt
@localizacao @funcionalidade_baisca
Funcionalidade: Encontrar localização
  Como oficial de justiça, 
  Eu quero identificar minha localização para poder verificá-la antes que seja informada à central de mandados

  # Contexto: Realiza login na aplicacao
  # Dado que o oficial de justiça está corretamente logado 
 
  @semgps 
  Cenário: Acessar aplicação com GPS desativado
    Dado que o GPS do dispositivo está desabilitado
    Quando realizar o login na aplicação
    Então deve ser exibida uma mensagem pedindo para o usuário habilitar o GPS antes de prosseguir
  
  Cenário: Acessar aplicação sem permissão de acesso á localização
    Dado que o usuário logado tenha recusado a autorizaçao de acesso a localizacao no login 
    Quando acessar a tela principal
    Então deve ser apresentada uma tela pedindo autorização de acesso à localização do usuário
  
  Cenário: Oficial de justiça realiza localizaçao para enviar
    Dado GPS do dispositivo móvel está habilitado 
    E o OJO possui permissão de acesso à localização do dispositivo móvel
    Quando o oficial de justiça pressionar o botão Estou aqui
    Então deve ser apresentada a tela com o endereço onde ele se encontra e o botão Enviar localização habilitado