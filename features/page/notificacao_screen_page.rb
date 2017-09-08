class NotificacaoScreenPage
  
  attr_accessor :mensagem
  
  def initialize(mensagem)
    @mensagem = mensagem
  end

  def getMensagem
    @mensagem.text
  end  
 
end