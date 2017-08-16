class ConfirmarLocalScreenPage
  
  attr_accessor :login_user, :login_password, :login_button
  
  def initialize(endereco, botao_enviar_local)
    @endereco = endereco
    @botao_enviar_local = botao_enviar_local
  end

  def getEndereco
    @endereco.text
  end  
  
  def botaoEnviarLocalHabilitado
    @login_button.isEnabled?
  end  
 
end