#language: pt
@timeline @funcionalidade_basica
Funcionalidade: Enviar localização para o OJO-Web
  Como Oficial de Justiça, 
  Eu quero visualizar minha timeline de check-ins para saber se meus registros foram sincronizados com o servidor ou se está aguardando conexão com a internet.

  Cenário: Visualizar timeline
    Dado que o oficial de justiça está logado
    E tem check-in realizado
    Quando navegar para Timeline
    Então deve ser exibido a timeline com check-ins agrupados por data
    E deve ser exibido a timeline com número do mandado do check-in
    E deve ser exibido a timeline com endereço do check-in
    E deve ser exibido a timeline com hora do check-in
    E deve ser exibido a timeline com status de sincronização do check-in