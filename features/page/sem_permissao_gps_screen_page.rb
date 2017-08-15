class SemPermissaoGPSScreenPage
  
  attr_accessor :mensagem_sem_permissao_gps
  
  def initialize(mensagem_sem_permissao_gps)
    @mensagem_sem_permissao_gps = mensagem_sem_permissao_gps
  end

  def getMensagemSemPermissaoGPS
    @mensagem_sem_permissao_gps.text 
  end  
 
end