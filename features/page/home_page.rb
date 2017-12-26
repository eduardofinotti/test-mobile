class HomeScreenPage
  
  attr_accessor :botao_cadastro, :botao_consulta
  
  def initialize(botao_cadastro, botao_consulta)
    @botao_cadastro = botao_cadastro
    @botao_consulta = botao_consulta
  end
  
  # def send_login_user(user)
  #   @login_user.send_key(user)
  # end
  
  def click_botao_cadastro
    @botao_cadastro.click
  end  
 
  def click_botao_consulta
    @botao_consulta.click
  end  

end