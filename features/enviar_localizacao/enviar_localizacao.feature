#language: pt
@localizacao @funcionalidade_basica
Funcionalidade: Enviar localização para o OJO-Web
  Como oficial de justiça,
  Eu quero enviar minha localização no SAJ/OJO Mobile para o OJO-Web para poder comprovar que estive no endereço onde a diligência foi cumprida.
  
  Cenário: Enviar localização para o servidor
    Dado que o oficial de justiça esteja logado no OJO com permissao a Localização 
    E que o dispositivo móvel tem conexão com a internet
    E que o dispositivo móvel esteja com o GPS ativo
    Quando o oficial de justiça pressionar o botão 'Enviar localização'
    Então deve ser enviada sua localização para o servidor (backend) do OJO exibindo uma mensagem de sucesso
  
  @atual
  Cenário: Enviar localização para o servidor sem conexão com a internet
    Dado que o oficial de justiça esteja logado no OJO com permissao a Localização 
    E que o dispositivo móvel esteja com o GPS ativo
    Quando o oficial de justiça pressionar o botão 'Enviar localização' sem conexão com a internet
    Então deve ser exibida uma mensagem informando que não há conexão com a internet