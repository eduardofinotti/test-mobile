# passos da página de confirmar endereço do oficial de justiça
class CadastroCarroScreenPage
  
  attr_accessor :endereco, :botao_enviar_local
  
  def initialize(endereco, botao_enviar_local)
    @endereco = endereco
    @botao_enviar_local = botao_enviar_local
  end

  def getEndereco
    @endereco.text
  end  
  
  def botaoEnviarLocalHabilitado
    @botao_enviar_local.enabled?
  end  

  def click_enviar_localizacao
    @botao_enviar_local.click
  end

end