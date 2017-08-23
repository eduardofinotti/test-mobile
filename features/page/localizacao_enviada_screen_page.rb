# Passos da página de confimação de localização enviada para o servidor
class LocalizacaoEnviadaScreenPage
  
  attr_accessor :mensagem, :botao_voltar_inicio
  
  def initialize(mensagem, botao_voltar_inicio)
    @mensagem = mensagem
    @botao_voltar_inicio = botao_voltar_inicio
  end

  def get_mensagem
    @mensagem.text
  end  

  def click_botao_voltar_inicio
    @botao_voltar_inicio.click
  end

end