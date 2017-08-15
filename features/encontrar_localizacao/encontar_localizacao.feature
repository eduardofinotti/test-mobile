#language: pt
@localizacao @funcionalidade_basica
Funcionalidade: Encontrar localização
  Como oficial de justiça, 
  Eu quero identificar minha localização para poder verificá-la antes que seja informada à central de mandados
  
  Cenário: Acessar aplicação com GPS desativado
    Dado que o GPS do dispositivo está desabilitado
    Quando realizar o login na aplicação
    Então deve ser exibida uma mensagem pedindo para o usuário habilitar o GPS antes de prosseguir
  
  @semgps
  Cenário: Acessar aplicação sem permissão de acesso á localização
    Dado que o usuário logado tenha recusado a autorização de acesso a localização no login
    Então deve ser apresentada uma tela pedindo autorização de acesso à localização do usuário
  
  Cenário: Oficial de justiça realiza localização para enviar
    Dado GPS do dispositivo móvel está habilitado 
    E o OJO possui permissão de acesso à localização do dispositivo móvel
    Quando o oficial de justiça pressionar o botão Estou aqui
    Então deve ser apresentada a tela com o endereço onde Oficial de justiça se encontra 
    E deve apresentar o botão Enviar localização habilitado